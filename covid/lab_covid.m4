% Copyright (c) 2020 Benjamin Crowell, CC-BY-SA
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
\noindent\vspace{10mm}\hspace{24mm}\textsf{\textbf{\Huge{Physics labs to be done at home}}}\\
\noindent\vspace{10mm}\hspace{24mm}\textsf{\textbf{\Huge{during the Covid-19 quarantines}}}\\
\noindent\vspace{0mm}\hspace{24mm}\textsf{\Large{Benjamin Crowell}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{\Large{Fullerton College}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{www.lightandmatter.com}
\yesiwantarabic
\mynormaltype

\pagebreak[4]
Copyright (c) 2020 by B.~Crowell. This lab manual is
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


%--------------------------- 221 -----------------------------

m4_include(../share/covid-measurement.tex)

m4_include(../share/covid-g.tex)

m4_include(../share/covid-air-friction.tex)

m4_include(../share/covid-mu-k.tex)

m4_include(../share/covid-capstan.tex)

m4_include(../share/covid-moi.tex)

%--------------------------- 222 -----------------------------

m4_include(../share/covid-dipole-and-superposition.tex)

m4_include(../share/covid-rc-circuits.tex)

%--------------------------- 223 -----------------------------

m4_include(../share/covid-optics.tex)

m4_include(../share/covid-grating.tex)


\twocolumn

%===========================================================



\backmatter
\end{document}
