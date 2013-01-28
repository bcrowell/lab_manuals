% Copyright (c) 1999-2011 Benjamin Crowell, CC-BY-SA licensed
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
\noindent\vspace{10mm}\hspace{24mm}\textsf{\textbf{\Huge{Lab Manual for Physics 206/211}}}\\
\noindent\vspace{0mm}\hspace{24mm}\textsf{\Large{Benjamin Crowell}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{\Large{Fullerton College}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{www.lightandmatter.com}
\yesiwantarabic
\mynormaltype

\pagebreak[4]
Copyright (c) 1999-2011 by B.~Crowell. This lab manual is
subject to the Creative Commons CC-BY-SA license.

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
m4_define([:__first_lab__:],1)m4_dnl
m4_include(../share/electricity.tex)
m4_define([:__first_lab__:],0)m4_dnl

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

m4_include(../share/resistivity.tex)
m4_include(../share/kirchoff.tex)
m4_include(../share/e-field.tex)
m4_include(../share/relativity.tex)
m4_include(../share/magnetism.tex)
m4_include(../share/electromagnetism.tex)
m4_include(../share/charge-to-mass.tex)
m4_include(../share/radioactivity.tex)
m4_include(../share/two-source-interference.tex)
m4_include(../share/refraction.tex)
m4_include(../share/geometric-optics.tex)
m4_include(../share/wave-optics.tex)
m4_include(../share/photoelectric-effect.tex)
m4_include(../share/electron-diffraction.tex)
m4_include(../share/hydrogen.tex)

%============================================================
\formatappendixtoc
%============================================================
m4_include(../share/format.tex)

m4_include(../share/basicerranal.tex)

m4_include(../share/errpropagation.tex)

m4_include(../share/graphing.tex)

m4_include(../share/powerlaws.tex)

m4_include(../share/high-voltage.tex)

m4_include(../share/laser-safety.tex)


\backmatter
\end{document}
