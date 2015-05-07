#!/usr/bin/perl

use strict;

# usage:
#   preflight_one_fig.pl foo.svg
# Checks whether there is no rendered version of foo.svg.
# Checks whether it was rendered to foo.png. If so, complains if it has transparency.
# Checks whether there is also a foo.pdf. If there is, checks foo.svg and foo.pdf for problems:
#   transparency (checked for in the svg)
#   fonts embedded in pdf
#   bad pdf structure
#   pdf older than svg
# If there's a problem, prints a message to stdout and exits with nonzero error code.

# requires the following tools:
#   xml_grep (part of ubuntu package xml-twig-tools)
#   qpdf (ubuntu package qpdf)
#   pdffonts (ubuntu package poppler-utils)
#   identify and mogrify (ubuntu package imagemagick)

my $svg = $ARGV[0];

my $pdf = $svg;
$pdf =~ s/\.svg$/.pdf/;
if (-e $pdf) {
  my $err = check_pdf($svg,$pdf);
  if ($err) {err($err)}
  exit(0);
}
else {
  # There's no pdf, so there'd better be a .jpg or .png
  foreach my $e('jpg','png') {
    my $bitmap = $svg;
    $bitmap =~ s/\.svg$/.$e/;
    if (-e $bitmap) {
      if ($e eq 'png') {
        my $f = `identify -format '%[channels]' $bitmap`;
        if ($f=~/rgba/) {
          my $c = "mogrify -background white -flatten -alpha off $bitmap";
          # system($c);
          err("file $bitmap contains transparency; fix with\n  $c\nand then check visually");
        }
      }
      exit(0);
    }
  }
  err("file $svg does not exist as .pdf, .jpg, or .png");
}

sub err {
  my $message = shift;
  print $message,"\n";
  exit(-1);
}

sub check_pdf {
  my ($svg,$pdf) = @_;
  my $err = check_for_stale_pdf($svg,$pdf);
  return $err if $err;
  my $err = check_pdf_for_fonts($svg,$pdf);
  return $err if $err;
  my $err = check_pdf_for_transparency($svg,$pdf);
  return $err if $err;
  my $err = check_pdf_for_structure($svg,$pdf);
  return $err if $err;
  return undef;
}

sub check_for_stale_pdf {
  my ($svg,$pdf) = @_;
  # -M is relative age of file in days, floating point
  (-M $svg) > (-M $pdf) or return 
         "file $pdf is older than file $svg, ".(-M $svg)." < ".(-M $pdf);
  return undef;
}

sub check_pdf_for_structure {
  my ($svg,$pdf) = @_;
  system("qpdf --check $pdf 1>/dev/null 2>/dev/null")==0 or return "bad structure for $pdf detected by qpdf --check:\n";
  return undef;
}

sub check_pdf_for_fonts {
  my ($svg,$pdf) = @_;
  my $fonts = `pdffonts $pdf`;
  $fonts =~ /\A.*\n.*\n(.*)/; # strip header lines
  my $f = $1;
  if ($f ne '') {return "embedded fonts found in file $pdf, made from $svg"}
  return undef;
}

sub check_pdf_for_transparency {
  my ($svg,$pdf) = @_;

  # for efficiency, first do a rough check:
  return undef unless `grep -e "opacity:[^1]" $svg`;

  # Now do a more reliable check.
  # There are three types of opacity: fill-opacity, stroke-opacity, and opacity (applied to whole groups).
  my $transp = `xml_grep --cond='*[\@style]' $svg  | grep -e "opacity:[^1]"`;
  if ($transp ne '') {
    # Often we get something like this:
    #     style="fill:none;fill-opacity:0.75"
    # This is harmless because there is no fill, so the transparency of the fill is irrelevant.
    while ($transp=~/style\s*=\s*"([^"]*)"/gi) {
      my $style = $1;
      my %styles = ();
      foreach my $item(split /;/,$style) {
        if ($item=~/(.*):(.*)/) {$styles{lc($1)} = lc($2)}
      }
      if (defined $styles{'opacity'} && $styles{"opacity"}<1) {
        return report_transparency($svg,$style);
      }
      foreach my $sf('stroke','fill') {
        if (   $styles{$sf} ne 'none' # works correctly if undef
            && defined $styles{"${sf}-opacity"}
            && $styles{"${sf}-opacity"}<1 ) { 
          return report_transparency($svg,$style);
        }
      }
    }
  }
  return undef;
}

sub report_transparency {
  my ($svg,$style) = @_;
  $style =~ /(.{0,22}opacity:[^1].{0,10})/;
  my $shorter = $1;
  return "transparency found in file $svg : ...$shorter...";
}
