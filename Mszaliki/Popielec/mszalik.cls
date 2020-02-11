\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mszalik}[2011/03/26 My custom mszalik class]
\LoadClass{book}

\RequirePackage{polski}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{luainputenc}
\RequirePackage[twoside, a5paper,top=1.5cm, bottom=1.5cm, left = 1.0cm, right=1.0cm, bindingoffset=0.5cm]{geometry}
%\RequirePackage{amsmath}
\RequirePackage{bm}
\RequirePackage{graphicx}
%\RequirePackage{indentfirst}
\RequirePackage[font={small}]{caption}
\RequirePackage{multicol}
\RequirePackage{xfrac}
\RequirePackage[space]{grffile}
\RequirePackage{tgtermes}
\RequirePackage{titlesec, blindtext, color, colortbl}
\RequirePackage{tikz}
\RequirePackage[compat=1.1.0]{tikz-feynman}
\RequirePackage[bottom]{footmisc}
\RequirePackage{subcaption}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{makecell}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{marvosym}
\RequirePackage{cite}
\RequirePackage{fontspec-luatex}
\RequirePackage[osf]{libertine}
\RequirePackage[normalem]{ulem}
\RequirePackage{gensymb}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage{afterpage}
\RequirePackage{paracol}
\RequirePackage{slashed}
\RequirePackage{pifont}
\RequirePackage{fontspec}
\RequirePackage[mathscr]{euscript}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{pgfornament}
\RequirePackage[autocompile]{gregoriotex}

\renewcommand{\footrulewidth}{1pt}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{}
\fancyhead[CE,CO]{}
\fancyfoot[LE,RO]{\thepage}
\fancyfoot[RE,LO]{{\small Duszpasterstwo Wiernych Tradycji Łacińskiej w Archidiecezji Wrocławskiej}}

\graphicspath{{Figures/}}

\setlength\parindent{0pt}

\titleformat{\section}[hang]{}{}{0pt}{\large\bfseries\centering}
\titleformat{\subsection}[hang]{}{}{0pt}{\large\centering}

\newcommand{\kol}{red}

\newcommand{\textjuni}[1]{{\fontspec{Junicode-Regular}#1}}

\newcommand{\vv}{\textcolor{\kol}{\textjuni{\char"2123. }}}
\newcommand{\rr}{\textcolor{\kol}{\textjuni{\char"211F. }}}
\newcommand{\rrr}{\newline\textcolor{\kol}{\textjuni{~~~~~~\char"211F. }}}
\newcommand{\nn}{\boldmath$\mathscr{N}$.~}

\newcommand{\rubric}[1]{\medskip{\bfseries\color{\kol} #1}\medskip}

\newcommand{\station}[1]{\centering\vspace*{-0.2cm}\small\textit{#1}\bigskip\\}
\newcommand{\proroctwo}[1]{\bigskip{\bfseries\centerline{#1}}\medskip}
\newcommand{\proroctwoo}[2]{\bigskip{\bfseries\centerline{#1}}\smallskip{\color{\kol}\itshape\centerline{#2}}\medskip}

\newcommand{\oremus}[3]{\medskip\centerline{\textbf{#1}}\medskip
	\begin{sloppypar}
		\begin{paracol}{2}
			\setlength{\columnsep}{0em}
			\begin{leftcolumn}
				#2
			\end{leftcolumn}
			\begin{rightcolumn}
				#3
			\end{rightcolumn}
		\end{paracol}
	\end{sloppypar}}

\newcommand{\oremuss}[2]{
	\begin{sloppypar}
		\begin{paracol}{2}
			\setlength{\columnsep}{0em}
			\begin{leftcolumn}
				#1
			\end{leftcolumn}
			\begin{rightcolumn}
				#2
			\end{rightcolumn}
		\end{paracol}
	\end{sloppypar}}

