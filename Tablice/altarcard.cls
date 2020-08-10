\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../altarcard}
\LoadClass{scrartcl}

\RequirePackage{graphicx}
\RequirePackage[osf]{libertine}
\RequirePackage{lettrine}
\RequirePackage[dvipsnames]{xcolor} 
\RequirePackage[object=vectorian]{pgfornament}
\RequirePackage{pgfornament-han}
\RequirePackage{background}
\RequirePackage{pifont}
\RequirePackage{soul}

\usetikzlibrary{calc}
\definecolor{fondpaille}{cmyk}{0,0,0.1,0}
\definecolor{darkgreen}{rgb}{0.0, 0.2, 0.13}

\DeclareOption{first}
{\backgroundsetup{
  scale=1,
  opacity=1,
  angle=0,
  color=darkgreen,
  contents={%
  \begin{tikzpicture}[every node/.style={inner sep=0pt}]
      %
      \pgfmathsetmacro{\cornersize}{1.5in}
      \pgfmathsetmacro{\edgesize}{3.1in}
      %
      \pgfmathsetmacro{\widthstart}{-((\textwidth - 2*\cornersize)/\edgesize/2)*(\edgesize/1cm)}
      \pgfmathsetmacro{\widthstep}{\widthstart + (-2*\widthstart - (\edgesize/1cm))/(ceil((-2*\widthstart - (\edgesize/1cm))/(\edgesize/1cm))}
      \pgfmathsetmacro{\widthend}{-\widthstart - (\edgesize/1cm)}
      %
      \pgfmathsetmacro{\heightstart}{-((\textheight - 2*\cornersize)/\edgesize/2)*(\edgesize/1cm)}
      \pgfmathsetmacro{\heightstep}{\heightstart + (-2*\heightstart - (\edgesize/1cm))/(ceil((-2*\heightstart - (\edgesize/1cm))/(\edgesize/1cm))}
      \pgfmathsetmacro{\heightend}{-\heightstart - (\edgesize/1cm)}
      %
      \pgfmathsetmacro{\lineoff}{0}
      % Corners ornaments
      \node[anchor=north west](CNW)
      at (current page.north west) {\pgfornament[width=\cornersize]{63}};
      \node[anchor=north east](CNE)
      at (current page.north east) {\pgfornament[width=\cornersize,symmetry=v]{63}};
      \node[anchor=south west](CSW)
      at (current page.south west) {\pgfornament[width=\cornersize,symmetry=h]{63}};
      \node[anchor=south east](CSE)
      at (current page.south east) {\pgfornament[width=\cornersize,symmetry=c]{63}};
      % Top
      \foreach \x in {\widthstart,\widthstep,...,\widthend}
      {\node[shift={(\x,-\lineoff)},anchor=north west](CNW)  at (current page.north)
      {\pgfornament[width=\edgesize,symmetry=v]{71}}; 
      % Bottom
      \node[shift={(\x,\lineoff)},anchor=south west](CNW)  at (current page.south)
      {\pgfornament[width=\edgesize,symmetry=v]{71}};}
      % Left
      \foreach \x in {\heightstart,\heightstep,...,\heightend}
      {\node[shift={(\lineoff,\x)},anchor=north west, rotate=90](CSW)  at (current page.west)
      {\pgfornament[width=\edgesize,symmetry=v]{71}}; 
      % Right
      \node[shift={(-\lineoff,\x)},anchor=north east, rotate=270](CNW)  at (current page.east)
      {\pgfornament[width=\edgesize,symmetry=v]{71}}; }
      % 
  \end{tikzpicture}
}}}

\DeclareOption{second}
{
  \backgroundsetup{
  scale=1,
  opacity=1,
  angle=0,
  color=darkgreen,
  contents={%
  \begin{tikzpicture}[every node/.style={inner sep=0pt}]
      %
      \pgfmathsetmacro{\cornersize}{6cm}
      \pgfmathsetmacro{\edgesize}{1.5cm}
      %
      \pgfmathsetmacro{\widthstart}{-floor((\textwidth - 2*\cornersize)/\edgesize/2)*(\edgesize/1cm)}
      \pgfmathsetmacro{\widthstep}{\widthstart + 2*(\edgesize/1cm)}
      \pgfmathsetmacro{\widthend}{-\widthstart - 2*(\edgesize/1cm)}
      %
      \pgfmathsetmacro{\heightstart}{-floor((\textheight - 2*\cornersize)/\edgesize/2)*(\edgesize/1cm)}
      \pgfmathsetmacro{\heightstep}{\heightstart + 2*(\edgesize/1cm)}
      \pgfmathsetmacro{\heightend}{-\heightstart - 2*(\edgesize/1cm)}
      %
      \pgfmathsetmacro{\step}{(\edgesize/1cm)}
      % Corners ornaments
      \node[anchor=north west](CNW)
      at (current page.north west) {\pgfornament[width=\cornersize]{63}};
      \node[anchor=north east](CNE)
      at (current page.north east) {\pgfornament[width=\cornersize,symmetry=v]{63}};
      \node[anchor=south west](CSW)
      at (current page.south west) {\pgfornament[width=\cornersize,symmetry=h]{63}};
      \node[anchor=south east](CSE)
      at (current page.south east) {\pgfornament[width=\cornersize,symmetry=c]{63}};
      %Top
      \foreach \x in {\widthstart,\widthstep,...,\widthend}
      {\node[shift={(\x,0cm)},anchor=north west](CNW)  at (current page.north)
      {\pgfornament[width=\edgesize,symmetry=v]{19}}; 
      \node[shift={(\x+\step,0cm)},anchor=north west](CNW)  at (current page.north)
      {\pgfornament[width=\edgesize,symmetry=h]{19}}; 
      % Bottom
      \node[shift={(\x,0cm)},anchor=south west](CNW)  at (current page.south)
      {\pgfornament[width=\edgesize,symmetry=v]{19}};
      \node[shift={(\x+\step,0cm)},anchor=south west](CNW)  at (current page.south)
      {\pgfornament[width=\edgesize,symmetry=h]{19}}; }
      % Left
      \foreach \x in {\heightstart,\heightstep,...,\heightend}
      {\node[shift={(0cm,\x)},anchor=south west](CSW)  at (current page.west)
      {\pgfornament[width=\edgesize,symmetry=v]{19}}; 
      \node[shift={(0cm,\x+\step)},anchor=south west](CSW)  at (current page.west)
      {\pgfornament[width=\edgesize,symmetry=h]{19}}; 
      % Right
      \node[shift={(0cm,\x)},anchor=south east](CNW)  at (current page.east)
      {\pgfornament[width=\edgesize,symmetry=v]{19}};
      \node[shift={(0cm,\x+\step)},anchor=south east](CNW)  at (current page.east)
      {\pgfornament[width=\edgesize,symmetry=h]{19}}; }
      % 
  \end{tikzpicture}
  }}}

\DeclareOption{third}
{
  \backgroundsetup{
  scale=1,
  opacity=1,
  angle=0,
  color=darkgreen,
  contents={%
  \begin{tikzpicture}[every node/.style={inner sep=0pt}]
      \pgfmathsetmacro{\cornersize}{6cm}
      \pgfmathsetmacro{\edgesize}{6cm}
      %
      \pgfmathsetmacro{\widthstart}{-((\textwidth - 2*\cornersize)/\edgesize/2)*(\edgesize/1cm)}
      \pgfmathsetmacro{\widthstep}{\widthstart + (-2*\widthstart - (\edgesize/1cm))/(ceil(-2*\widthstart/(\edgesize/1cm))}
      \pgfmathsetmacro{\widthend}{-\widthstart - (\edgesize/1cm)}
      %
      \pgfmathsetmacro{\heightstart}{-((\textheight - 2*\cornersize)/\edgesize/2)*(\edgesize/1cm)}
      \pgfmathsetmacro{\heightstep}{\heightstart + (-2*\heightstart - (\edgesize/1cm))/(ceil(-2*\heightstart/(\edgesize/1cm))}
      \pgfmathsetmacro{\heightend}{-\heightstart - (\edgesize/1cm)}
      %
      \pgfmathsetmacro{\offx}{0.4}
      \pgfmathsetmacro{\offy}{0.5}
      \pgfmathsetmacro{\lineoff}{1.2}
      \def\picsize{2.3cm}
      % Corners ornaments
      \node[anchor=north west](CNW)
      at (current page.north west) {\pgfornamenthan[width=\cornersize]{28}};
      \node[anchor=north east](CNE)
      at (current page.north east) {\pgfornamenthan[width=\cornersize,symmetry=v]{28}};
      \node[anchor=south west](CSW)
      at (current page.south west) {\pgfornamenthan[width=\cornersize,symmetry=h]{28}};
      \node[anchor=south east](CSE)
      at (current page.south east) {\pgfornamenthan[width=\cornersize,symmetry=c]{28}};
      % Corners pictures
      \node[shift={(\offx,-\offy)}, anchor=north west](CNW)
      at (current page.north west) {\includegraphics[width=\picsize]{../Figures/image1.png}};
      \node[shift={(-\offx,-\offy)}, anchor=north east](CNE)
      at (current page.north east) {\includegraphics[width=\picsize]{../Figures/image2.png}};
      \node[shift={(\offx,\offy)}, anchor=south west](CSW)
      at (current page.south west) {\includegraphics[width=\picsize]{../Figures/image3.png}};
      \node[shift={(-\offx,\offy)}, anchor=south east](CSE)
      at (current page.south east) {\includegraphics[width=\picsize]{../Figures/image4.png}};
      % Top
      \foreach \x in {\widthstart,\widthstep,...,\widthend}
      {\node[shift={(\x,-\lineoff)},anchor=north west](CNW)  at (current page.north)
      {\pgfornamenthan[width=\edgesize,symmetry=v]{30}}; 
      % Bottom
      \node[shift={(\x,\lineoff)},anchor=south west](CNW)  at (current page.south)
      {\pgfornamenthan[width=\edgesize,symmetry=v]{30}};}
      % Left
      \foreach \x in {\heightstart,\heightstep,...,\heightend}
      {\node[shift={(\lineoff,\x)},anchor=north west, rotate=90](CSW)  at (current page.west)
      {\pgfornamenthan[width=\edgesize,symmetry=v]{30}}; 
      % Right
      \node[shift={(-\lineoff,\x)},anchor=north east, rotate=270](CNW)  at (current page.east)
      {\pgfornamenthan[width=\edgesize,symmetry=v]{30}}; }
      % 
  \end{tikzpicture}
    }}}

\ProcessOptions\relax

% Non breaking words
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000


\setulcolor{Maroon}           % Color of underline
\setlength{\parindent}{0pt}   % No indentation


\newcommand{\cross}{\textcolor{red}{\raisebox{-1mm}{\scalebox{1.5}{\ding{64}}}}}
\newcommand{\amen}{\textcolor{Maroon}{Amen.}}
\newcommand{\initial}[2]{\lettrine[lines=3]{\color{Maroon}#1}{\bfseries\color{Maroon}#2}}
\newcommand{\gap}{\vspace{0.3cm}}
\newcommand{\bend}[1]{\ul{#1}}

\AtBeginDocument{
  \thispagestyle{empty}
  \pagecolor{fondpaille}
  % \color{Maroon}
  \color{darkgreen}
  \Large}