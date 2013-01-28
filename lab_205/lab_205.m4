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
\noindent\vspace{10mm}\hspace{24mm}\textsf{\textbf{\Huge{Lab Manual for Physics 205/210}}}\\
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

% Interactions

m4_define([:__first_lab__:],1)m4_dnl
m4_include(../share/interactions.tex)
m4_define([:__first_lab__:],0)m4_dnl

The
most common mistake is to fail to address the \emph{point}
of the lab. If you feel like you don't understand why you
were doing any of this, then you were missing out on your
educational experience! See the back of the lab manual for
the format of lab writeups.

\section*{Notes For Next Week}

(1) Next week, when you turn in your writeup for this lab,
you also need to turn in a prelab writeup for the next lab.
on a separate piece of paper. The prelab questions are listed at
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

% The Earth's Gravitational Field

m4_include(../share/g.tex)

%-------------------------------------------------------------

% Newton's Second Law

m4_include(../share/atwood.tex)

%-------------------------------------------------------------

m4_include(../share/force_vector_digital.tex)

%-------------------------------------------------------------

m4_include(../share/acceltwod.tex)

%-------------------------------------------------------------

m4_include(../share/conservation-laws.tex)

%-------------------------------------------------------------

m4_include(../share/conservation-of-energy.tex)

%-------------------------------------------------------------

m4_include(../share/momentum.tex)

%-------------------------------------------------------------

m4_include(../share/torque.tex)

%-------------------------------------------------------------

% Resonance

m4_include(../share/resonance.tex)

%-------------------------------------------------------------

m4_include(../share/standing-waves.tex)

%-------------------------------------------------------------

m4_include(../share/resonances-of-sound.tex)

%============================================================
\formatappendixtoc
%============================================================

m4_include(../share/format.tex)

m4_include(../share/basicerranal.tex)

m4_include(../share/errpropagation.tex)

m4_include(../share/graphing.tex)

m4_include(../share/powerlaws.tex)

%===========================================================



\backmatter
\end{document}
