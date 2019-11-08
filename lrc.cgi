#!/usr/bin/perl

use FindBin qw( $RealBin );
use lib $RealBin;

#$| = 1; # Set output to flush directly (for troubleshooting)
require "cgi-lib.pl";
use strict;

print "Content-type:text/html\n\n";


use CGI;
my $co = new CGI;

print <<__HTML__;
<HTML><BODY><HEAD><TITLE>data analysis for LRC circuits lab</TITLE></HEAD>
<BODY><p>Don't enter fractions or scientific notation.</p>
<p><b>Analysis of the last set of data you entered:</b>
__HTML__

  my $f = $co->param('f');
  my $vmax = $co->param('vmax');
  my $v = $co->param('v');
  if ($f ne '') {
    print "<p>f=".$f." Hz</p>\n";
    print "<p>Vmax=".$vmax." V</p>\n";
    print "<p>V=".$v." V</p>\n";
    print "<p>log10(f) = ".log($f)/log(10.)."</p>\n";
    print "<p>db = ".20.*log($v/$vmax)/log(10.)."</p>\n";
  }
  print "</p>\n";

  print "<p><b>Next set of data:</b></p>\n";
  print $co->start_form(-method=>'POST',-action=>"http://lightandmatter.com/cgi-bin/lrc.cgi");
  print "<p>f=".$co->textfield(-name=>'f',-value=>'')," Hz</p>";
  print "<p>Vmax=".$co->textfield(-name=>'vmax',-value=>$vmax)," V</p>";
  print "<p>V=".$co->textfield(-name=>'v',-value=>'')," V</p>";
  print $co->submit(-name=>'Continue');
  print $co->endform;


print <<__HTML__;
</body></html>
__HTML__
