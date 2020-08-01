\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{instrukcja}[2011/03/26 My custom instruction class]
\LoadClass[openany]{book}

\RequirePackage[margin=2.5cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{paracol}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{amsmath}
% \RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage[polish]{babel}
\RequirePackage{pifont}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[bottom]{footmisc}
\RequirePackage{sectsty}
\RequirePackage[normalem]{ulem}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{libertinus-otf}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{fontspec}
\RequirePackage[textwidth=20mm]{todonotes}
\RequirePackage{float}
\RequirePackage{rotating}
\RequirePackage{hyperref}
\RequirePackage{pdfpages}
\RequirePackage{wasysym}
\RequirePackage{tikzsymbols}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}


\fancypagestyle{plain}{%
\fancyhf{}% clears all header and footer fields
\fancyfoot[C]{\thepage}%
\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{0pt}}

\newsavebox{\imagebox}

% \setlist[enumerate]{leftmargin=-1cm}

\setlength{\parindent}{0cm}

\allsectionsfont{\textsc}

\captionsetup[figure]{labelfont={bf},name={Rys.},labelsep=period}

\graphicspath{ {Figures/} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\ii}{${X}$}
\newcommand{\dd}{${D}$}
\renewcommand{\ss}{${S}$}
\renewcommand{\aa}{${A}$}
\renewcommand{\tt}{${T}$}
\newcommand{\cc}{${C}$}
\newcommand{\oo}{${O}$}
\newcommand{\mm}{${M}$}
\newcommand{\zz}{${Z}$}
\newcommand{\bb}{${B}$}
\newcommand{\spiew}{\twonotes}
\newcommand{\paschal}{\Candle[1.3]}
\newcommand{\kolatki}{{\Large\bell}}

% \newcommand{\chapter}[1]{
% 	\setcounter{section}{0}
% 	\begin{center}
% 		\hrulefill \\
% 		{\Huge\bfseries\scshape #1 \\}
% 		\hrulefill
% 	\end{center}}

\definecolor{bostonuniversityred}{rgb}{0.8, 0.0, 0.0}

\titleformat{\chapter}
   {\Huge\bfseries\scshape}{\color{bostonuniversityred}\thechapter.}{1em}{}

\newcommand{\opis}[1]{
	\begin{center}
		\begin{minipage}{0.6\linewidth}
			\centering
			#1
		\end{minipage}
	\end{center}}

\newcommand{\inde}[1]{
	\begin{minipage}{0.05\linewidth}
		${}$
	\end{minipage}
	\begin{minipage}{0.8\linewidth}
		\textit{#1}
	\end{minipage}}

\newcommand{\header}[1]{
	\hrulefill
	\vspace{0.7cm}
	\begin{center}
		\textbf{\textsc{{\Huge{#1}}}}
	\end{center}
	\vspace{0.5cm}
	\hrulefill
}

\newcommand{\footer}[1]{
	\vfill
	\hrulefill\\
	{\footnotesize #1}
}

\newenvironment{itemize*}
{ \begin{itemize}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}     }
{ \end{itemize}                  } 


\setlength{\columnsep}{2em}

