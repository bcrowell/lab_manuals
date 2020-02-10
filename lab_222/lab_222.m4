% Copyright (c) 1999-2002 Benjamin Crowell and Virginia Roundy -- OPL licensed
%
%
%
m4_changequote(`[:',`:]')m4_dnl
\documentclass{lab}
\let\ifpdf\relax % http://tex.stackexchange.com/questions/11414/package-ifpdf-error
\begin{document}
\myeqnspacing % Do this early and often, since it gets reset by \normalsize
%========================= frontmatter =========================
\frontmatter
\yesiwantarabic
\frontmatter
\thispagestyle{empty}
\noindent\vspace{0mm}\\
\noindent\vspace{10mm}\hspace{24mm}\textsf{\textbf{\Huge{Lab Manual for Physics 222}}}\\
\noindent\vspace{0mm}\hspace{24mm}\textsf{\Large{Benjamin Crowell and Virginia Roundy}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{\Large{Fullerton College}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{www.lightandmatter.com}
\yesiwantarabic
\mynormaltype

\pagebreak[4]
Copyright (c) 1999-2011 by B.~Crowell and V.~Roundy. This lab manual is
subject to the Open Publication License, opencontent.org.

\tableofcontents


%========================= main matter =========================
\mainmatter
\startchaptersonleftpage
%-- I want the whole book numbered sequentially, arabic:
\pagenumbering{arabic} 
\addtocounter{page}{4} 
\parafmt
\myeqnspacing % Do this early and often, since it gets reset by \normalsize
\twocolumn

%-------------------------------------------------------------
m4_include(../share/electricity.tex)

%------------ ... tail end of first lab -------------------------------------------------

\section*{Notes For Next Week}

(1) Next week, when you turn in your writeup for this lab,
you also need to turn in a prelab writeup for the next lab.
The prelab questions are listed at
the end of the description of that lab in the lab manual.
Never start a lab without understanding the answers to all
the prelab questions; if you turn in partial answers or
answers you're unsure of, discuss the questions with your
instructor or with other students to make sure you
understand what's going on.

(2) You should exchange phone numbers with your lab partners
for general convenience throughout the semester. You can also
get each other's e-mail addresses by logging in to Spotter and
clicking on ``e-mail.''

m4_include(../share/rules.tex)

%-------------------------------------------------------------

m4_include(../share/resistance.tex)

m4_include(../share/kirchoff.tex)

m4_include(../share/e-field.tex)

m4_include(../share/magnetism.tex)

m4_include(../share/oscilloscope.tex)

m4_include(../share/electromagnetism.tex)

m4_include(../share/charge-to-mass.tex)

m4_include(../share/relativity.tex)

m4_include(../share/energy-in-fields.tex)

m4_include(../share/rc.tex)

m4_include(../share/ac.tex)

m4_include(../share/faraday.tex)

m4_include(../share/polarization.tex)

%============================================================
\formatappendixtoc
%============================================================
m4_include(../share/format.tex)

m4_include(../share/basicerranal.tex)

m4_include(../share/errpropagation.tex)

m4_include(../share/graphing.tex)

m4_include(../share/powerlaws.tex)


%-----------------------------------------------------------------
\myappendix{meter}{Using a Multimeter}

The most convenient instrument for measuring currents and
voltage differences is called a digital multimeter (DMM), or
simply a multimeter. ``Digital'' means that it shows the
thing being measured on a calculator-style LCD display.
``Multimeter'' means that it can measure current, voltage,
or resistance, depending on how you have it set up.
Since we have many different types of
multimeters, these instructions only cover the standard
rules and methods that apply to all such meters. You may
need to check with your instructor regarding a few of the
particulars for the meter you have available.

\section*{Measuring current}

When using a meter to measure current, the meter must be in
series with the circuit, so that every electron going by is
forced to go through the meter and contribute to a current
in the meter. Many multimeters have more than one scale for
measuring a given thing. For instance, a meter may have a
milliamp scale and an amp scale. One is used for measuring
small currents and the other for large currents. You may not
be sure in advance what scale is appropriate, but that's not
big problem --- once everything is hooked up, you can try
different scales and see what's appropriate. Use the switch
or buttons on the front to select one of the current scales.
The connections to the meter should be made at the
``common'' socket (``COM'') and at the socket labeled ``A'' for Amperes. 

\section*{Measuring voltage}

For a voltage measurement, use the switch or buttons on the
front to select one of the voltage scales. (If you forget,
and hook up the meter while the switch is still on a current
scale, you may blow a fuse.) You always measure voltage
differences with a meter. One wire connects the meter to one
point in the circuit, and the other connects the meter to
another point in a circuit. The meter measures the
difference in voltage between those two points. For example,
to measure the voltage across a resistor, you must put the
meter in parallel with the resistor. The connections to the
meter should be made at the ``common'' socket (``COM'') and
at the socket labeled ``V'' for Volts. 

\section*{Blowing a fuse is not a big deal.}

If you hook up your multimeter incorrectly, it is possible
to blow a fuse inside. This is especially likely to happen
if you set up the meter to measure current (meaning it has a
small internal resistance) but hook it up in parallel with a
resistor, creating a large voltage difference across it.
Blowing a fuse is not a big problem, but it can be
frustrating if you don't realize what's happened. If your
meter suddenly stops working, you should check the fuse.

m4_include(../share/high-voltage.tex)

m4_include(../share/laser-safety.tex)

\afterpage{
%\setlength{\parindent}{0pt}
\addtolength{\textwidth}{-1in}
%\setlength{\evensidemargin}{0in}
\onecolumn
%\setlength{\hoffset}{-1in}
}

m4_include(../share/comment-codes.tex)


%-----------------------------------------------------------------

\myappendix{opl}{The Open Publication License}


Copyright (c) 1999-2001 B. Crowell and V. Roundy. All rights reserved.

These materials are open-content licensed under the OPL 1.0
license. A copy of the license is given below, and the
original is available at  http://opencontent.org.

LICENSE 

Terms and Conditions for Copying, Distributing, and Modifying 

Items other than copying, distributing, and modifying the
Content with which this license was distributed (such as
using, etc.) are outside the scope of this license. 

1. You may copy and distribute exact replicas of the
OpenContent (OC) as you receive it, in any medium, provided
that you conspicuously and appropriately publish on each
copy an appropriate copyright notice and disclaimer of
warranty; keep intact all the notices that refer to this
License and to the absence of any warranty; and give any
other recipients of the OC a copy of this License along with
the OC. You may at your option charge a fee for the media
and/or handling involved in creating a unique copy of the OC
for use offline, you may at your option offer instructional
support for the OC in exchange for a fee, or you may at your
option offer warranty in exchange for a fee. You may not
charge a fee for the OC itself. You may not charge a fee for
the sole service of providing access to and/or use of the OC
via a network (e.g., the Internet), whether it be via the
world wide web, FTP, or any other method. 

2. You may modify your copy or copies of the OpenContent or
any portion of it, thus forming works based on the Content,
and distribute such modifications or work under the terms of
Section 1 above, provided that you also meet all of these conditions: 

a) You must cause the modified content to carry prominent
notices stating that you changed it, the exact nature and
content of the changes, and the date of any change. 

b) You must cause any work that you distribute or publish,
that in whole or in part contains or is derived from the OC
or any part thereof, to be licensed as a whole at no charge
to all third parties under the terms of this License, unless
otherwise permitted under applicable Fair Use law.  These
requirements apply to the modified work as a whole. If
identifiable sections of that work are not derived from the
OC, and can be reasonably considered independent and
separate works in themselves, then this License, and its
terms, do not apply to those sections when you distribute
them as separate works. But when you distribute the same
sections as part of a whole which is a work based on the OC,
the distribution of the whole must be on the terms of this
License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of
who wrote it. Exceptions are made to this requirement to
release modified works free of charge under this license
only in compliance with Fair Use law where applicable. 

3. You are not required to accept this License, since you
have not signed it. However, nothing else grants you
permission to copy, distribute or modify the OC. These
actions are prohibited by law if you do not accept this
License. Therefore, by distributing or translating the OC,
or by deriving works herefrom, you indicate your acceptance
of this License to do so, and all its terms and conditions
for copying, distributing or translating the OC. 

NO WARRANTY 

4. BECAUSE THE OPENCONTENT (OC) IS LICENSED FREE OF CHARGE,
THERE IS NO WARRANTY FOR THE OC, TO THE EXTENT PERMITTED BY
APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE
COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE OC ``AS
IS'' WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK OF USE OF THE OC IS WITH YOU.
SHOULD THE OC PROVE FAULTY, INACCURATE, OR OTHERWISE
UNACCEPTABLE YOU ASSUME THE COST OF ALL NECESSARY REPAIR OR CORRECTION. 

5. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED
TO IN WRITING WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY
WHO MAY MIRROR AND/OR REDISTRIBUTE THE OC AS PERMITTED
ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL,
SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF
THE USE OR INABILITY TO USE THE OC, EVEN IF SUCH HOLDER OR
OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 



\backmatter
\end{document}
