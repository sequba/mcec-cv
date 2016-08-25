\ProvidesClass{mcec-cv}[2016/08/01]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

% ------------------------------
% -- Packages --
% ------------------------------

\RequirePackage[default]{lato}
\usepackage[T1]{fontenc}

\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{ragged2e}
\RequirePackage{parskip}
\RequirePackage{fontawesome}

% ------------------------------
% -- Colors --
% ------------------------------
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{sidecolor}{HTML}{E7E7E7}
\definecolor{maincolor}{HTML}{245FA6}
\definecolor{grey}{HTML}{484848}
\definecolor{lightgrey}{HTML}{8F8F8F}
\definecolor{maingrey}{HTML}{B3B3B3}
\colorlet{asidecolor}{sidecolor}

% ------------------------------
% -- Page Setting --
% ------------------------------

\RequirePackage[left=7.2cm, top=1cm, right=0.8cm, bottom=1cm, nohead, nofoot]{geometry}
\RequirePackage{hyperref}

% -- settings: section --
\renewcommand{\section}[1]{
	\par\noindent\colorbox{maincolor}
	{\parbox[t][0.6cm][c]
		{\dimexpr\textwidth-0\fboxsep\relax}
		{\par\noindent \centering \color{white} \large #1 } 
	} \par\noindent
}

% -- mcec flags: --
\newcommand{\flag}[1]{\fcolorbox{lightgrey}{lightgrey}{\color{white} #1}}
\newcommand{\largeflag}[1]{\fcolorbox{lightgrey}{lightgrey}{\color{white} \large #1}}

% ------------------------------
% -- Profile left SideBar --
% ------------------------------

\setlength{\TPHorizModule}{1cm} % left border
\setlength{\TPVertModule}{2cm} % top border

% -- settings: image profile --
\newcommand{\imsize}{\linewidth}
\newlength\imagewidth
\newlength\imagescale
\renewcommand{\imsize}{0.618\linewidth}
\pgfmathsetlength{\imagewidth}{5.5cm}
\pgfmathsetlength{\imagescale}{\imagewidth/600}

% -- settings: personal info --
\newcommand{\profilepic}[1]{\renewcommand{\givenprofilepic}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvjobtitle}[1]{\renewcommand{\givencvjobtitle}{#1}}
\newcommand{\cvdate}[1]{\renewcommand{\givencvdate}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\givencvaddress}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\givennumberphone}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\givencvmail}{#1}}
\newcommand{\cvsitename}[1]{\renewcommand{\givencvsitename}{#1}}
\newcommand{\cvsiteaddress}[1]{\renewcommand{\givencvsiteaddress}{#1}}

\newcommand{\givenprofilepic}{}
\newcommand{\givencvname}{REQUIRED!}
\newcommand{\givencvjobtitle}{}
\newcommand{\givencvdate}{}
\newcommand{\givencvaddress}{REQUIRED!}
\newcommand{\givennumberphone}{REQUIRED!}
\newcommand{\givencvmail}{}
\newcommand{\givencvsitename}{}
\newcommand{\givencvsiteaddress}{}

% -- settings: about me --
\newcommand{\about}[1]{\renewcommand{\givenabout}{
	\vspace{0.5cm} 
	\section{About me}\justifying #1}}
\newcommand{\givenabout}{}

% -- settings: languages --
\newcommand{\languages}[1]{
	\renewcommand{\givenlanguages}{
		\vspace{0.5cm} 
		\section{Languages}
		\begin{flushleft}
		\foreach [count=\i] \x/\y in {#1} {\hspace{0.05	cm} \flag{\x} \hfill {\small \y} \\ }
		\end{flushleft}
}}
\newcommand{\givenlanguages}{}

% -- settings: mcec skills --
\newcommand{\mcecskills}[1]{ 
	\renewcommand{\givenmcecskills}{
		\vspace{0.5cm} 
		\section{Skills}
		\begin{flushleft}
		\foreach [count=\i] \x in {#1} {\flag{\x} } 
		\end{flushleft}
}}
\newcommand{\givenmcecskills}{}


% -- settings: skills --
%\newcommand\skills[1]{ 
%\renewcommand{\givenskill}{
%\noindent
%\begin{tikzpicture}
%\foreach [count=\i] \x/\y in {#1}
%{
%
%\draw[fill=maingrey,maingrey] (0,\i) rectangle (6,\i+0.4);
%\draw[fill=white,maincolor](0,\i) rectangle (\y,\i+0.4);
%\node [above right ] at (0,\i+0.4) {\x};
%}
%\end{tikzpicture}
%}
%}
%\newcommand{\givenskill}{}
%
%\newcommand\skillstext[1]{ 
%
%\renewcommand{\giventextskill}{
%\begin{flushleft}
%\noindent
%\foreach [count=\i] \x/\y in {#1}
%{ 
%\x$ \star $\y
%}
%\end{flushleft}
%}
%}
%
%\newcommand{\giventextskill}{}




% ------------------------------
% -- settings: lists mcec --
% ------------------------------

% mcecllist (long list): [5]
% 	(1) job position / title school
%	(2) company name / school course
% 	(3) date (4) location (5) description
\newenvironment{mcecllist}{
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll} }
	{ \end{tabular*} }
\newcommand{\litem}[5]{
\hspace{1mm} \parbox[t]{11.5cm}{
	\textbf{\color{black} \large #1} \\
	\textbf{\color{black} \normalsize #2} \\
	\textbf{\color{grey} {\small #3} | {\footnotesize #4}}	
} \\
\vspace{5mm} \hspace{1mm} \parbox[t]{13.4cm}{ {\color{grey} \small #5} }
\\ }

% mcecslist (normal list): [3]
% 	(1) title certificate (2) code (3) date 
\newenvironment{mcecnlist}{
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll} }
	{ \end{tabular*} }
\newcommand{\nitem}[3]{
\hspace{1mm} \parbox[t]{11.5cm}{
	\textbf{\color{black} \large #1} \\
	\textbf{\color{black} \normalsize #2} | \textbf{\color{grey} {\small #3}}	
}}

% mcecslist (short list): [2]
% 	(1) date (2) title
\newenvironment{mcecslist}{
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll} }
	{ \end{tabular*} }
\newcommand{\sitem}[2]{
\vspace{0.1cm} \hspace{4pt} \color{grey} {\small #1}&\parbox[t]{12cm}{
	\textnormal{\color{black} \normalsize #2}
}\\}




% ------------------------------
% -- makeprofile --
% ------------------------------
\newcommand{\makeprofile}
{
% -- grey background --
\begin{tikzpicture}[remember picture, overlay]
   	 \node [rectangle, fill=asidecolor, anchor=north, minimum width=6.5cm, minimum height=10.6cm] (box) at (-3.7cm,1.6cm){};
\end{tikzpicture}

% -- left sidebar content --
\begin{textblock}{6}(0.5, 0.2)
\begin{flushleft}

	% -- print profile pic --
	\begin{tikzpicture}[x=\imagescale, y=-\imagescale]
    	    \node[anchor=north west, inner sep=5pt, outer sep=0pt] at (0,0) 
        	{\includegraphics[width=\imagewidth]{\givenprofilepic}};
	\end{tikzpicture}

	% -- print profile name --
	\begin{center}
		{\LARGE\givencvname}
	\end{center}

	% -- print personal info --
	\begin{tabular}{p{0.1cm} @{\hskip 0.5cm}p{5cm}}
	\ifthenelse{\equal{\givencvdate}{}}{}{\textsc{\footnotesize\faCalendar} & \givencvdate\\[0.1cm]}
	\ifthenelse{\equal{\givencvaddress}{}}{}{\textsc{\faMapMarker} & \givencvaddress\\[0.1cm]}
	\ifthenelse{\equal{\givennumberphone}{}}{}{\textsc{\faPhone} & \givennumberphone\\[0.1cm]}
	\ifthenelse{\equal{\givencvmail}{}}{}{\textsc{@} & \href{mailto:\givencvmail}{{\color{maincolor} \givencvmail}} \\[0.1cm]}
	\ifthenelse{\equal{\givencvsitename}{}}{}{\textsc{\faGlobe} & \href{\givencvsiteaddress}{{\color{maincolor} \givencvsitename}} \\[0.1cm]}
	\end{tabular}

	\givenabout
	
	\givenlanguages
	
	\givenmcecskills
	
%	\section{Skill}
%	\givenskill
%	\giventextskill
%	\noindent
%	\scriptsize
%	\noindent
	
\end{flushleft}
\end{textblock}
\vspace{-10pt}
}

% ------------------------------
% -- maketitlename --
% ------------------------------
\newcommand{\maketitlename}
{
% -- print profile name --
\begin{center}
	{\color{maincolor} \Huge\givencvname}
\end{center}

% -- print job position --
\begin{center}
	{\color{grey} \Large\givencvjobtitle}
\end{center}
\vspace{5pt}
}




