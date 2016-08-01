\ProvidesClass{mcec-cv}[2016/08/01]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

% ------------------------------
% -- Packages --
% ------------------------------

\RequirePackage[default]{lato}
\RequirePackage[T1]{fontenc}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{ragged2e}
\RequirePackage{etoolbox}
\RequirePackage{ifmtarg}
\RequirePackage{ifthen}
\RequirePackage{pgffor}
\RequirePackage{marvosym}
\RequirePackage{parskip}
\RequirePackage{fontawesome}

%\DeclareOption{print}{\def\@cv@print{}}
%\DeclareOption*{
%  \PassOptionsToClass{\CurrentOption}{article}
%}
%\ProcessOptions\relax

% ------------------------------
% -- Colors --
% ------------------------------
\definecolor{white}{HTML}{FFFFFF}%
\definecolor{black}{HTML}{000000}%
%\definecolor{darkgray}{HTML}{333333}
%\definecolor{gray}{HTML}{4D4D4D}
\definecolor{sidecolor}{HTML}{E7E7E7}%
%\definecolor{lightgray}{HTML}{999999}
%\definecolor{green}{HTML}{C2E15F}
%\definecolor{orange}{HTML}{FDA333}
%\definecolor{purple}{HTML}{D3A4F9}
%\definecolor{red}{HTML}{FB0B00}
%\definecolor{blue}{HTML}{6CE0F1}
\definecolor{mainblue}{HTML}{245FA6}%
\definecolor{maingray}{HTML}{B9B9B9}
%\definecolor{maindarkgray}{HTML}{B3B3B3}
\ifdefined\@cv@print
  %\colorlet{green}{gray}
  %\colorlet{orange}{gray}
  %\colorlet{purple}{gray}
  %\colorlet{red}{gray}
  %\colorlet{blue}{gray}
  %\colorlet{fillheader}{white}
  \colorlet{asidecolor}{sidecolor}
  %\colorlet{header}{gray}
\else
  %\colorlet{fillheader}{gray}
  %\colorlet{header}{white}
  \colorlet{asidecolor}{sidecolor}
\fi

%\colorlet{textcolor}{gray}
%\colorlet{headercolor}{gray}




% ------------------------------
% -- Profile left SideBar --
% ------------------------------

\setlength{\TPHorizModule}{1cm} % left border
\setlength{\TPVertModule}{7cm} % top border

% settings image profile
\newcommand{\imsize}{\linewidth}
\newlength\imagewidth
\newlength\imagescale
\renewcommand{\imsize}{0.618\linewidth}
\pgfmathsetlength{\imagewidth}{5.5cm}
\pgfmathsetlength{\imagescale}{\imagewidth/600}

% settings personal info
\newcommand{\profilepic}[1]{\renewcommand{\givenprofilepic}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvdate}[1]{\renewcommand{\givencvdate}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\givencvaddress}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\givennumberphone}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\givencvmail}{#1}}
\newcommand{\cvsitename}[1]{\renewcommand{\givencvsitename}{#1}}
\newcommand{\cvsiteaddress}[1]{\renewcommand{\givencvsiteaddress}{#1}}
\newcommand{\aboutme}[1]{\renewcommand{\givenaboutme}{	\\ \par\noindent \justifying #1}}

\newcommand{\givenprofilepic}{}
\newcommand{\givencvname}{REQUIRED!}
\newcommand{\givencvdate}{}
\newcommand{\givencvaddress}{REQUIRED!} 
\newcommand{\givennumberphone}{REQUIRED!}
\newcommand{\givencvmail}{}
\newcommand{\givencvsitename}{}
\newcommand{\givencvsiteaddress}{}
\newcommand{\givenaboutme}{}

% 
\newcommand*\icon[1]{\tikz[baseline=(char.base)]{
            \node[shape=rectangle, text=black] (char) {#1};}}

\newcommand{\profilesection}[1]{
	\par\noindent\colorbox{mainblue}
	{\parbox[t][0.6cm][c]{\dimexpr\textwidth-0\fboxsep\relax}{\centering \color{white} \large #1}}
}
            
\newcommand*\round[2]{%
  \tikz[baseline=(char.base)]\node[anchor=north west, draw,rectangle, rounded corners, inner sep=1.6pt, minimum size=5.5mm,
    text height=3.6mm,  fill=#2,#2,text=white](char){#1} ;}

\newcommand\skills[1]{ 

\renewcommand{\givenskill}{
\noindent
\begin{tikzpicture}
\foreach [count=\i] \x/\y in {#1}
{

\draw[fill=maingray,maingray] (0,\i) rectangle (6,\i+0.4);
\draw[fill=white,mainblue](0,\i) rectangle (\y,\i+0.4);
\node [above right ] at (0,\i+0.4) {\x};
}
\end{tikzpicture}
}
}
\newcommand{\givenskill}{}

\newcommand\skillstext[1]{ 

\renewcommand{\giventextskill}{
\begin{flushleft}
\noindent
\foreach [count=\i] \x/\y in {#1}
{ 
\x$ \star $\y
}
\end{flushleft}
}
}

\newcommand{\giventextskill}{}

% ------------------------------
% -- makeprofile --
% ------------------------------
\newcommand{\makeprofile}
{
% -- grey background --
\begin{tikzpicture}[remember picture, overlay]
   	 \node [rectangle, fill=asidecolor, anchor=north, minimum width=9.0cm, minimum height=12cm] (box) at (-5cm,0.5cm){};
\end{tikzpicture}

% -- left sidebar content --
\begin{textblock}{6}(0.5, 0.2)
\begin{flushleft}
%\hspace{13pt}

% -- print profile pic --
\begin{tikzpicture}[x=\imagescale, y=-\imagescale]
        \node[anchor=north west, inner sep=5pt, outer sep=0pt] at (0,0) 
        {\includegraphics[width=\imagewidth]{\givenprofilepic}};
\end{tikzpicture}

% -- print name --
\begin{center}
	{\LARGE\givencvname}
\end{center}

% -- print personal info --
%\renewcommand{\arraystretch}{1.6}
\begin{tabular}{p{0.1cm} @{\hskip 0.5cm}p{5cm}}
\ifthenelse{\equal{\givencvdate}{}}{}{\textsc{\footnotesize\faCalendar} & \givencvdate\\}
\ifthenelse{\equal{\givencvaddress}{}}{}{\textsc{\faMapMarker} & \givencvaddress\\}
\ifthenelse{\equal{\givennumberphone}{}}{}{\textsc{\faPhone} & \givennumberphone\\}
\ifthenelse{\equal{\givencvmail}{}}{}{\textsc{@} & \href{mailto:\givencvmail}{{\color{mainblue} \givencvmail}} \\}
\ifthenelse{\equal{\givencvsitename}{}}{}{\textsc{\faGlobe} & \href{\givencvsiteaddress}{{\color{mainblue} \givencvsitename}} \\}
\end{tabular}

\vspace{0.7cm}
\profilesection{About me}
\givenaboutme

\profilesection{Skill}
\givenskill
\giventextskill
\noindent
\scriptsize
\noindent

\end{flushleft}
\end{textblock}
\vspace{-10pt}
}




%%%%%%%%%%%%%%%%
% Section Color box %
%%%%%%%%%%%%%%%%
\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{%
  {%
   \round{#1#2#3}{
      \ifcase\value{colorCounter}%
        maingray\or%
        mainblue\or%
        maingray\or%
        mainblue\else%
        maingray\fi%
    }%
  }%
  \stepcounter{colorCounter}%
}

\renewcommand{\section}[1]{
  \par%\vspace{\parskip}
  {%
    \LARGE\color{headercolor}%
    \@sectioncolor #1%
  }
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[1]{
  \par\vspace{.5\parskip}%
  {%
  \large\color{headercolor} #1%
  }
  \par\vspace{.25\parskip}%
}

\pagestyle{empty}


%%%%%%%%%%%%%%%%%%%%
% List twenty environment %
%%%%%%%%%%%%%%%%%%%%

\setlength{\tabcolsep}{0pt}
\newenvironment{twenty}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}
\renewcommand{\bfseries}{\color{headercolor}}
\newcommand{\twentyitem}[4]{%
  \hspace{5pt}#1&\parbox[t]{11.5cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize#3}\\%
    #4\vspace{\parsep}%
  }\\}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Small twenty List environment %
%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\tabcolsep}{0pt}
\newenvironment{twentyshort}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}
\renewcommand{\bfseries}{\color{headercolor}}
\newcommand{\twentyitemshort}[2]{%
  \hspace{5pt}#1&\parbox[t]{11.5cm}{%
    \textbf{#2}%
  }\\}


%%%%%%%%%%%%
% Page Setting %
%%%%%%%%%%%%

\RequirePackage[left=7.3cm,top=0.1cm,right=0.5cm,bottom=0.2cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}