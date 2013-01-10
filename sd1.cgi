#!/usr/bin/perl

#$| = 1; # Set output to flush directly (for troubleshooting)
require "cgi-lib.pl";
use strict;

print "Content-type:text/html\n\n";


use CGI;
my $co = new CGI;

print <<__HTML__;
<HTML><BODY><HEAD><TITLE>calculation of the standard deviation</TITLE></HEAD>
<BODY>Enter as many measurements as you have, and leave the rest of the boxes blank.
Don't enter fractions or scientific notation.
__HTML__

  print $co->startform(-method=>'POST',-action=>"http://lightandmatter.com/cgi-bin/sd2.cgi");
  for (my $i=1; $i<=15; $i++) {
    print <<__INSTR__;
    <p>
__INSTR__
    print $co->textfield(-name=>$i,-value=>''),"</p>";
  }                                                                               
  print $co->submit(-name=>'Continue'), $co->reset;
  print $co->endform;

print <<__HTML__;
</body></html>
__HTML__
