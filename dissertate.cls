% -------------------------------------------------------------------
%	@LaTeX-class-file{
%		filename		= "Dissertate.cls",
%		version		= "1.0",
%		date			= "29 June 2020",
%		author		= "Leonardo Gemin",
%		codetable		= "ISO/ASCII",
%		keywords		= "LaTeX, Dissertate",
%		docstring		= "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertate}[2020/06/29 v1.0 Dissertate Class]
\LoadClass[a4paper, twoside, openright, 12pt]{book}


% Packages
\RequirePackage[main = italian, english]{babel}
\RequirePackage[outer=1in, inner=1.55in, twoside, a4paper]{geometry}


% Plot
\RequirePackage{pgfplots}
\pgfplotsset{/pgf/number format/use comma,compat=newest}

% Color
\RequirePackage{color}
	\definecolor{school_red}{RGB}{155, 0, 20}
	\definecolor{school_grey}{RGB}{72, 79, 89}
	\definecolor{bgCode}{RGB}{235, 235, 235}

\RequirePackage{graphicx}
\RequirePackage{microtype}
\RequirePackage{lettrine}
\RequirePackage[hyphens]{url}
\RequirePackage[pdfusetitle]{hyperref}
	\hypersetup{
		colorlinks,
		citecolor = school_red,
		filecolor = black,
		linkcolor = black,
		urlcolor = school_red,
	}

\RequirePackage{subcaption}
\RequirePackage{titling}
\RequirePackage{rotating}


% Table
\AtBeginEnvironment{tabular}{
	\setmainfont[Numbers = {OldStyle, Monospaced}]{Minion Pro}
}
\RequirePackage[	labelfont		= {bf, sf, footnotesize, singlespacing},
				textfont		= {sf, footnotesize, singlespacing},
				justification	= {justified, RaggedRight},
				singlelinecheck	= false,
				margin		= 0pt,
				figurewithin	= chapter,
				tablewithin	= chapter]{caption}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\newcommand{\splitCell}[1]{%
  \begin{tabular}{@{}c@{}}\strut#1\strut\end{tabular}%
}


% Headers
\RequirePackage{emptypage}
\RequirePackage{fancyhdr}
	\pagestyle{plain}


% Headings
\RequirePackage{sectsty}
	\allsectionsfont{\sffamily\scshape\textcolor{school_red}}
	\setlength{\headheight}{15pt}

\RequirePackage[palatino]{quotchap}
	\definecolor{chaptergrey}{RGB}{155, 0, 20}
%	\renewcommand*{\chapnumfont}{%
%		\usefont{OT1}{Minion Pro}{b}{n}\fontsize{72}{130}\selectfont%
%		%\fontfamily{MinionPro}\fontseries{sb}\fontshape{n}\fontsize{100}{130}\selectfont
%		\color{chaptergrey}%
%	}


% Text & Math Font
\RequirePackage{amsthm}
	\theoremstyle{definition}
	\newtheorem{definizione}{Definizione}[chapter]
	\newtheorem{teorema}{Teorema}[chapter]
\RequirePackage{amsmath}
\RequirePackage[MnSymbol, quiet]{mathspec}
	\setmathsfont(Digits,Latin,Greek)[Numbers={Lining,Proportional}]{Minion Pro}
	\setmathrm{Minion Pro}
	\setmainfont[	Scale				= 1.0,
					Ligatures			= {TeX, Common},
					Numbers			= OldStyle,
					Kerning			= On ]{Minion Pro}
					
	\setsansfont[	Scale				= MatchLowercase,
					Ligatures			= TeX,
					Numbers			= OldStyle,
					Path				= fonts/GillSans/ ,
					UprightFont		= *-Regular,
					ItalicFont			= *-Italic,
					BoldFont			= *-Medium,
					BoldItalicFont	= *-MediumItalic,
					Extension			= .otf]{GillSans}
	\DeclareMathAlphabet{\mathbb}{U}{msb}{m}{n}


% Pseudocode
\RequirePackage[linesnumbered,ruled,vlined,italiano]{algorithm2e}
	\newcommand{\ssFontBold}[1]{\textsf{\textbf{#1}}}
	\newcommand{\ssFontEmph}[1]{\textsf{\emph{#1}}}
	\SetKwSty{ssFontBold}
	\SetFuncSty{texttt}
	\SetFuncArgSty{ssFontEmph}
	\SetProgSty{ssFontEmph}
	\SetArgSty{ssFontEmph}
	\SetDataSty{sffamily}
	\SetCommentSty{texttt}
	\SetNlSty{ssFontBold}{}{}
	\SetKw{KwDownTo}{down to}
	\SetKw{KwAnd}{and}


% C code
\RequirePackage{listings}
\lstset{language={[ansi]C}}


% Front matter.
\setcounter{tocdepth}{2}
\RequirePackage[titles]{tocloft}
\RequirePackage[titletoc]{appendix}
	\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
	\renewcommand{\cftchapfont}{\normalsize \scshape}
	
	\renewcommand{\frontmatter}{
		\pagenumbering{roman}
		\input{frontmatter/personalize}
		\maketitle
		\frontispiece
		\dedicationpage
		\abstractpage
		%\sommario
		\tableofcontents
		\phantomsection
		\clearpage
	
		% figure listing - required if you have any figures
		\addcontentsline{toc}{chapter}{\listfigurename}
		\listoffigures
		\phantomsection
		\cleardoublepage
	
		% table listing - required if you have any tables
		\addcontentsline{toc}{chapter}{\listtablename}
		\listoftables
		\phantomsection
		\cleardoublepage
		
		% algorithm listing
		\addcontentsline{toc}{chapter}{Elenco degli algoritmi}
		\listofalgorithms
		\phantomsection
		\cleardoublepage
		
		% acronym listing
		%\acronyms
		%\cleardoublepage
		
		\setcounter{page}{1}
		\pagenumbering{arabic}
	}


% Endmatter
	\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}
	\renewcommand{\backmatter}{
		%\begin{appendices}
		%	\include{chapters/appendixA}
		%\end{appendices}
		
		\input{endmatter/personalize}
		\cleardoublepage
		
		% references
		\references
		\cleardoublepage
		
		% acknowledgments
		\acknowledgments
		\cleardoublepage
		
		\include{endmatter/colophon}
}


% References.
%\RequirePackage[comma,numbers]{natbib}
\RequirePackage[autostyle, italian=guillemets, english=british]{csquotes}
\RequirePackage[backend=biber, bibstyle=numeric]{biblatex}
\addbibresource{references.bib}



% An environment for paragraph-style section.
\providecommand\newthought[1]{
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}
   \noindent\textsc{#1}
}


% Abbreviations
\newcommand{\abbrlabel}[1]{
	\makebox[3cm][l]{\textbf{#1}\ \dotfill}
}
\newenvironment{abbreviations}{\begin{list}{}{\renewcommand{\makelabel}{\abbrlabel}}}{\end{list}}


% Some definitions.
	\def\advisor#1{\gdef\@advisor{#1}}
	\def\degreeyear#1{\gdef\@degreeyear{#1}}
	\def\academicYear#1{\gdef\@academicYear{#1}}
	








\newcommand{\cover}{
	\input{frontmatter/personalize}
	\thispagestyle{empty}
	\begin{center}
		%\vbox to0pt{\vbox to\textheight{\vfill\includegraphics[width=11.5cm]{resources/unipd-light}\vfill}\vss}
		\vbox to0pt{
			\vbox to\textheight{
				\vfill
				\includegraphics[width=11.5cm]{resources/white}
				\vspace{10mm}
				\vfill
			}
			\vss
		}
		
		\begin{figure}
			\centering
		  		%\includegraphics[height=2.5cm]{resources/sigilloUniPd}%unipd-bn}
		  		\includegraphics[height=2.5cm]{resources/logoUniPd_orizzontale}\hfill\includegraphics[height=2.5cm]{resources/DEI_logo}
		\end{figure}
	
		\Large
			\textbf{\textsc{Università degli Studi di Padova}}
			
		\vspace{7mm}
		\hrule
		
		\bigskip
		
		\large
			\textsc{Dipartimento di Ingegneria dell'Informazione}
	
		\medskip
		
		\normalsize
			Tesi di \textit{Laurea Triennale} in \textsc{Ingengeria Informatica}
	
		\vspace{\stretch{1.0}}
		
		\LARGE
			\textsc{\textbf{\textcolor{school_red}{\thetitle}}}
			
		\vspace{\stretch{2.0}}
		
		\normalsize
			\textit{Relatore} \hfill \textit{Candidato}
	
			\smallskip
				
			\textsc{\@advisor} \hfill \textsc{\theauthor}
			
		\vspace{7mm}
		
		\hrule
		
		\bigskip
		
		\normalsize
			\textsc{Anno Accademico 2019/2020}
			
			\textsc{21 settembre 2020}
	\end{center}
	\cleardoublepage
}

\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\setcounter{page}{1}
	\begin{center}
		%\vbox to0pt{\vbox to\textheight{\vfill\includegraphics[width=11.5cm]{resources/unipd-light}\vfill}\vss}
		\vbox to0pt{
			\vbox to\textheight{
				\vfill
				\includegraphics[width=11.5cm]{resources/unipd-light}
				\vspace{10mm}
				\vfill
			}
			\vss
		}
		
		\begin{figure}
			\centering
		  		\includegraphics[height=2.5cm]{resources/sigilloUniPd}%unipd-bn}
		\end{figure}
	
		\Large
			\textbf{\textsc{Università degli Studi di Padova}}
			
		\vspace{7mm}
		\hrule
		
		\bigskip
		
		\large
			\textsc{Dipartimento di Ingegneria dell'Informazione}
	
		\medskip
		
		\normalsize
			Tesi di \textit{Laurea Triennale} in \textsc{Ingengeria Informatica}
	
		\vspace{25pt}
		
		\LARGE
			\textsc{\textbf{\textcolor{school_red}{\thetitle}}}
			
		\vspace{40pt}
		
		\vfill
		
		\normalsize
			\textit{Relatore} \hfill \textit{Candidato}
	
			\smallskip
				
			\textsc{\@advisor} \hfill \textsc{\theauthor}
			
		\vspace{7mm}
		
		\hrule
		
		\bigskip
		
		\normalsize
			\textsc{Anno Accademico 2019/2020}
			
			\textsc{21 settembre 2020}
	\end{center}
	\cleardoublepage
}
\renewcommand{\maketitle}{
	\setcounter{page}{1}
	\cover
}

\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	\vspace*{25pt}
	\begin{center}
		\scshape \noindent \small \copyright \  \small  \theauthor \\
		all rights reserved, \@degreeyear
	\end{center}
	\newpage
	\rm
}

\newcommand{\frontispiece}{
	\newpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\begin{center}
	\end{center}
	\vspace*{\fill}
}

\newcommand{\dedicationpage}{
	\phantomsection
	%\thispagestyle{empty}
	\setcounter{page}{3}
	%\vspace*{\fill}
	%\scshape \noindent \input{frontmatter/dedication}
	%\vspace*{\fill}
	\vspace*{\fill}%\stretch{1.5}}
	\noindent \input{frontmatter/dedication}
	\vspace*{\fill}%\stretch{1}}
	\cleardoublepage
	\rm
}

\newcommand{\acknowledgments}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Ringraziamenti}
	\chapter*{Ringraziamenti}
	\input{frontmatter/thanks}
}

\newcommand{\sommario}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Sommario}
	\chapter*{Sommario}
	\input{frontmatter/preface}
}

\newcommand{\acronyms}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Elenco degli acronimi}
	\chapter*{Elenco degli acronimi}
	\input{frontmatter/abbr.tex}
}

\newcommand{\abstractpage}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Abstract}
	\chapter*{Abstract}
	\input{frontmatter/abstract}
}


\newcommand{\references}{
	%\phantomsection
	%\addcontentsline{toc}{chapter}{\bibname}
	\nocite{*}
	\printbibliography[heading=bibintoc]
}


