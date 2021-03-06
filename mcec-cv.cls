\ProvidesClass{mcec-cv}[2016/08/01]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% ------------------------------
% -- Packages --
% ------------------------------

\RequirePackage[default]{lato}

\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{ragged2e}
\RequirePackage{parskip}
\RequirePackage{fontawesome}
\RequirePackage{xifthen}% provides \isempty test

% ------------------------------
% -- Colors --
% ------------------------------
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{sidecolor}{HTML}{DBEEEE} %{E2EBEB} %{E7E7E7}
\definecolor{maincolor}{HTML}{5D9595} %{81B3B1} % {76A9A7}
\definecolor{maingrey}{HTML}{3d6262} % {8E9E9D} % {8A8A8A}
\definecolor{grey}{HTML}{484848}
\definecolor{lightgrey}{HTML}{8F8F8F}
\colorlet{asidecolor}{sidecolor}

% ------------------------------
% -- Page Setting --
% ------------------------------

\RequirePackage[a4paper, left=7.2cm, top=0.2cm, right=0.5cm, bottom=1cm, nohead, nofoot]{geometry}
\RequirePackage{hyperref}
\pagenumbering{gobble}

% -- settings: links --
\hypersetup{
	colorlinks=true,
%	linkcolor=pink
}

% -- settings: emphasis --
\let\emph\relax % theres no \RedeclareTextFontCommand
\DeclareTextFontCommand{\emph}{\bfseries}

% -- settings: section --
\renewcommand{\section}[1]{
	\par\noindent\colorbox{maincolor}
	{\parbox[t][0.5cm][c]
		{\dimexpr\textwidth-0\fboxsep\relax}
		{\par\noindent \centering \color{white} \large #1 } 
	} \par\noindent
}

\newcommand*\round[3]{%
	\tikz[baseline=(char.base)]\node[anchor=north west, draw, rectangle, rounded corners, inner sep=3pt, minimum size=6mm, text height=3mm, fill=#2, #2, text=#3](char){#1} ;}
    
\newcommand*\littleround[3]{%
	\tikz[baseline=(char.base)]\node[anchor=north west, draw, rectangle, rounded corners, inner sep=3pt, minimum size=5.3mm, text height=2.4mm, fill=#2, #2, text=#3](char){#1} ;}

% -- mcec flags: --
\newcommand{\flag}[1]{\round{#1}{maingrey}{white}}
\newcommand{\largeflag}[1]{\round{\large #1}{maingrey}{white}}
\newcommand{\smallflag}[1]{\littleround{\small #1}{maingrey}{white}}
\newcommand{\wbflag}[1]{\littleround{#1}{white}{black}}

% ------------------------------
% -- Profile left SideBar --
% ------------------------------

\setlength{\TPHorizModule}{1cm} % left border
\setlength{\TPVertModule}{2cm} % top border

% -- settings: profile pic --
\newcommand{\imsize}{\linewidth}
\newlength\imagewidth
\newlength\imagescale
\renewcommand{\imsize}{0.618\linewidth}
\pgfmathsetlength{\imagewidth}{5.5cm}
\pgfmathsetlength{\imagescale}{\imagewidth/600}
\newcommand{\givenprofilepic}{}
\newcommand{\profilepic}[1]{\renewcommand{\givenprofilepic}{#1}}
% -- settings: name --
\newcommand{\givenname}{REQUIRED!}
\newcommand{\name}[1]{\renewcommand{\givenname}{#1}}
% -- settings: job --
\newcommand{\givenjob}{}
\newcommand{\job}[1]{\renewcommand{\givenjob}{#1}}

% -- settings: birth date  --
\newcommand{\givendate}{}
\renewcommand{\date}[3]{\renewcommand{\givendate}{
		\newcounter{myage}
		\setcounter{myage}{\the\year}
		\addtocounter{myage}{-#1}
		\ifthenelse{\the\month<#2}{\addtocounter{myage}{-1}}{}
		\ifthenelse{\the\month=#2}{
				  \ifthenelse{\the\day < #3}{\addtocounter{myage}{-1}}{}
		}{}

		\textsc{\wbflag{\faCalendar}} age: \themyage{} \\
}}

% -- settings: marital status --
\newcommand{\givenmarital}{}
\newcommand{\marital}[1]{\renewcommand{\givenmarital}{\textsc{\wbflag{\faMale}} #1 \\}}
% -- settings: nationality --
\newcommand{\givennationality}{}
\newcommand{\nationality}[1]{\renewcommand{\givennationality}{\textsc{\wbflag{\faFlagCheckered}} #1 \\}}% -- settings: address --
\newcommand{\givenaddress}{}
\newcommand{\address}[1]{\renewcommand{\givenaddress}{\textsc{\wbflag{\faMapMarker}} #1 \\}}
% -- settings: phones --
\newcommand{\givenphones}{}
\newcommand{\phones}[1]{
	\renewcommand{\givenphones}{
		\foreach [count=\i] \x in {#1} {\textsc{\wbflag{\faPhone}} \x \\}	
}}
% -- settings: emails --
\newcommand{\givenemails}{}
\newcommand{\emails}[1]{
	\renewcommand{\givenemails}{
		\foreach [count=\i] \x in {#1} {\textsc{\wbflag{@}} \href{mailto:\x}{\x}  \\}	
}}
% -- settings: site address --
\newcommand{\givensite}{}
\newcommand{\site}[2]{
	\renewcommand{\givensite}{\textsc{\wbflag{\faGlobe}} \href{#2}{#1}  \\}	
}
% -- settings: github address
\newcommand{\givengithub}{}
\newcommand{\github}[1]{
	\renewcommand{\givengithub}{\textsc{\wbflag{\faGithub}} \href{#1}{#1} \\}
}
% -- settings: linkedin address
\newcommand{\givenlinkedin}{}
\newcommand{\linkedin}[1]{
	\renewcommand{\givenlinkedin}{\textsc{\wbflag{\faLinkedin}} \href{#1}{https://linkedin.com} \\}
}
% -- settings: twitter address
\newcommand{\giventwitter}{}
\newcommand{\twitter}[1]{
	\renewcommand{\giventwitter}{\textsc{\wbflag{\faTwitter}} \href{#1}{https://twitter.com} \\}
}


% -- settings: about me --
\newcommand{\about}[2][About me]{\renewcommand{\givenabout}{
	\vspace{0.5cm} 
	\section{#1}\justifying #2}}
\newcommand{\givenabout}{}

% -- settings: languages --
\newcommand{\languages}[2][Languages]{
	\renewcommand{\givenlanguages}{
		\vspace{0.5cm} 
		\section{#1}
		\begin{flushleft}
		\foreach [count=\i] \x/\y in {#2} {
			\begin{table}[]
			\begin{tabular}{lr}
				\hspace{-0.25 cm} \flag{\x} & {\small \y}
			\end{tabular}
			\end{table}		
		}
		\end{flushleft}
}}
\newcommand{\givenlanguages}{}

% -- settings: mcec skills --
\newcommand{\mcecskills}[2][Skills]{ 
	\renewcommand{\givenmcecskills}{
		\vspace{0.5cm} 
		\section{#1}
		\begin{flushleft}
		\foreach [count=\i] \x in {#2} {\smallflag{\x} } 
		\end{flushleft}
}}
\newcommand{\givenmcecskills}{}

% -- settings: interests --
\newcommand{\interests}[2][Interests]{
	\renewcommand{\giveninterests}{
		\vspace{0.5cm}
		\section{#1}
		\begin{flushleft}
		\foreach [count=\i] \x in {#2} {\smallflag{\x} }
		\end{flushleft}
}}
\newcommand{\giveninterests}{}

% -- settings: skills --
\newcommand\skills[1]{ 
\renewcommand{\givenskill}{
\noindent
\begin{tikzpicture}
\foreach [count=\i] \x/\y in {#1}
{

\draw[fill=maingrey,maingrey] (0,\i) rectangle (6,\i+0.4);
\draw[fill=white,maincolor](0,\i) rectangle (\y,\i+0.4);
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
% -- settings: lists mcec --
% ------------------------------

\newcommand{\flagseq}[2][\smallflag]{
	\foreach [count=\i] \x in {#2} {#1{\x} }
}

% mcecllist (long list): [5]
% 	(1) job position / title school
%	(2) company name / school course
% 	(3) date (4) location (5) description
\newenvironment{mcecllist}{
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll} }
	{ \end{tabular*} }
\newcommand{\litem}[6][{}]{
\vspace{4mm} \hspace{0.5mm} \parbox[t]{13cm}{
		% title
		\ifthenelse{\isempty{#2}}{}
			{\textbf{\color{black} \large #2}}
		% subtitle
		\ifthenelse{\isempty{#3}}{}
			{\\ \textbf{\color{black} \normalsize #3}}
		% date
		\ifthenelse{\isempty{#4}}{}
			{\\ \textbf{\color{grey} {\small #4}}}
		% location
		\ifthenelse{\isempty{#5}}{}
			{\textbf{\color{grey}| {\footnotesize #5}}}	
		% description
		\ifthenelse{\isempty{#6}}{}
			{\\ \color{grey} \small #6}
		% flags
		\ifthenelse{\isempty{#1}}{}
			{\\ \flagseq{#1}}
} \\ }

% mcecnlist (normal list): [4]
% 	(1) title certificate (2) link (3) code (4) date 
\newenvironment{mcecnlist}{
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll} }
	{ \end{tabular*} }
\newcommand{\nitem}[4]{
\vspace{5mm} \hspace{1mm} \parbox[t]{11.5cm}{
	\textbf{\color{black} \href{#2}{#1}} \\
	\textbf{\color{black} \normalsize #3} | \textbf{\color{grey} {\small #4}}		
} \\ }

% mcecslist (short list): [2]
% 	(1) date (2) title
\newenvironment{mcecslist}{
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll} }
	{ \end{tabular*} }
\newcommand{\sitem}[3][{}]{
\vspace{0.2cm} \hspace{4pt} \color{grey} {\small #2}&\parbox[t]{11.8cm}{
	\textnormal{\color{black} \normalsize #3}
	% flags
	\ifthenelse{\isempty{#1}}{}
		{\\ \flagseq{#1}}
}\\}




% ------------------------------
% -- makeprofile --
% ------------------------------
\newcommand{\makeprofile}
{
% -- grey background --
\begin{tikzpicture}[remember picture, overlay]
	\node [rectangle, fill=asidecolor, anchor=north, minimum width=7cm, minimum height=9.8cm] (box) at (-3.8cm,1.6cm){};
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
		{ \huge\textbf{\givenname}}
	\end{center}

	% -- print job title --
	\begin{center}
    	{\color{grey} \Large\givenjob}
	\end{center}

	% -- print personal info --
	\vspace{0.5cm}	
	\givendate	
	\givenmarital
	\givennationality
	\givenaddress
	\givenphones	
	\givenemails
	\givensite
	\givenlinkedin
	\givengithub
	\giventwitter

	\givenabout
	
	\givenlanguages
	
	\givenmcecskills

	\giveninterests

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
	{\color{maincolor} \Huge\givenname}
\end{center}

% -- print job position --
\begin{center}
	{\color{grey} \Large\givenjob}
\end{center}
\vspace{5pt}
}




