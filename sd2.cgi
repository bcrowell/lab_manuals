#!/usr/bin/perl

#$| = 1; # Set output to flush directly (for troubleshooting)
require "cgi-lib.pl";
use strict;

print "Content-type:text/html\n\n";


use CGI;
my $co = new CGI;

print <<__HTML__;
<HTML><BODY><HEAD><TITLE>calculation of the standard deviation</TITLE></HEAD>
<BODY>
__HTML__

my @x;

for (my $j=1; $j<=15; $j++) {
  my $x = $co->param($j);
  if ($x ne '') {
    push @x,$x;
  }

}

my $avg = 0;
my $n = 0;
foreach my $x(@x) {
  ++$n;
  $avg += $x;
}
if ($n>=1) {
  $avg = $avg/$n;
  print "<p>average = $avg</p>\n";
  my $u = 0;
  foreach my $x(@x) {
    my $d = ($x-$avg)*($x-$avg);
    $u += $d;
    print "<p>($x - average)^2 = $d</p>\n";
  }
  my $sd = sqrt($u/$n);
  print "<p>The square root of the average of these numbers is the standard deviation, $sd</p>\n";
}


print <<__HTML__;
</body></html>
__HTML__
