\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{instrukcja}[2011/03/26 My custom instruction class]
\LoadClass{article}

\RequirePackage[margin=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{graphicx}
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
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage{libertinus-otf}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{fontspec}
\RequirePackage{paracol}
\RequirePackage{multicol}

\newsavebox{\imagebox}

\setlist[enumerate]{leftmargin=-1cm}
\setlength{\parindent}{0cm}
\setlength{\columnsep}{1.5cm}
\setlength{\columnseprule}{0.4pt}

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

\newcommand{\chapter}[1]{
	\setcounter{section}{0}
	\begin{center}
		\hrulefill \\
		{\Huge\bfseries\scshape #1 \\}
		\hrulefill
	\end{center}}

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
  {\begin{itemize}
    \setlength{\itemsep}{5pt}}
  {\end{itemize}}


