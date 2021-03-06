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
\noindent\vspace{0mm}\hspace{24mm}\textsf{\Large{Crowell, Persichilli, and Ji}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{\Large{Fullerton College}}\\
\noindent\vspace{16mm}\hspace{24mm}\textsf{www.lightandmatter.com}
\yesiwantarabic
\mynormaltype

\pagebreak[4]
Copyright (c) 2020 by B.~Crowell and S.~Ji. This lab manual is
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

m4_include(../share/covid-2nd-law.tex)

m4_include(../share/covid-vector-addition.tex)

m4_include(../share/covid-projectile-motion.tex)

m4_include(../share/covid-ball-bounce.tex)

m4_include(../share/covid-calorimetry.tex)

m4_include(../share/covid-ballistic-pendulum.tex)

m4_include(../share/covid-buoyancy.tex)

m4_include(../share/covid-mechanical-advantage.tex)

m4_include(../share/covid-moi.tex)

m4_include(../share/covid-pulley.tex)

m4_include(../share/covid-torque.tex)


%--------------------------- 222 -----------------------------

m4_include(../share/covid-field-of-a-permanent-magnet.tex)

m4_include(../share/covid-electric-field.tex)

m4_include(../share/covid-dipole-and-superposition.tex)

m4_include(../share/covid-polarization.tex)

m4_include(../share/covid-oscilloscope.tex)

m4_include(../share/covid-electromagnetism.tex)

m4_include(../share/covid-electrical-measurements.tex)

m4_include(../share/covid-kirchoff.tex)

m4_include(../share/covid-rc-circuits.tex)

m4_include(../share/covid-rl-circuit.tex)

m4_include(../share/covid-ac-circuits.tex)

m4_include(../share/covid-faraday.tex)

%--------------------------- 223 -----------------------------

m4_include(../share/covid-optics.tex)

m4_include(../share/covid-grating.tex)


\twocolumn

%===========================================================

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
