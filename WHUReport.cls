%%% Version 2.0 2022.8 ----by snowflakes
\ProvidesClass{WHUReport}
%%% ---- Load class ---- %%%
\LoadClass[a4paper,12pt]{article}% A4 size, article type

%%% ---- Load Packages ---- %%%
% For Chinese characters, both XeCJK and ctex are ok
%\RequirePackage{xeCJK}
\RequirePackage{ctex}

% For overall page settings
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\usepackage{setspace}
\RequirePackage{listings}
\usepackage{makecell}
\usepackage{multicol}

% For inserting figures
\RequirePackage{graphicx}
\RequirePackage{float}%强制图片
\RequirePackage{epstopdf}

% Other settings: table, bib, math
\RequirePackage{xcolor}
\usepackage{booktabs}%三线表
\usepackage{stfloats}
\usepackage{datetime}
\usepackage{natbib}
\usepackage{amsmath}%\cfrac{分子}{分母}
\usepackage[breaklinks,colorlinks,linkcolor=black,
citecolor=black,urlcolor=black]{hyperref}
\newcommand{\exptype}{None}

% For Subtitle
\RequirePackage{enumitem}
\RequirePackage{subcaption}
\usepackage{caption}
\usepackage{titlesec}
\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{2}
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\newlist{clause}{enumerate}{1}
\setlist[clause]{fullwidth,itemindent=2em,label=(\arabic*)}
\newCJKfontfamily[song]\song{SimSun}[AutoFakeBold]

%\setmonofont{Lucida Console}
%\setsansfont{SimHei}
% \titleformat*{\section}{\large\bfseries}
% \titleformat*{\subsection}{\normalsize\bfseries}
% \titleformat*{\subsubsection}{\normalsize}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
 	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	 {3.25ex \@plus1ex \@minus .2ex}%
	 {-1em}%
	 {\normalfont\normalsize\bfseries}}


\titlespacing{\subsection}{2em}{*4}{*1.5}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

\setmainfont{Times New Roman}
\newfontfamily\sectionef{Times New Roman}
\newCJKfontfamily\sectioncf{kaishu}
\setCJKfamilyfont{simkai}{SIMKAI.TTF}
\renewcommand{\kaishu}{\CJKfamily{simkai}}
\titleformat{\section}{\raggedright\normalsize\bfseries}{}{-1em}{}
\titleformat*{\subsection}{\raggedright\small\bfseries}
\titleformat*{\subsubsection}{\raggedright\small\sectioncf}
\renewcommand\thesection{\arabic{section}}
\newcommand{ \upcite}[1]{\textsuperscript{\textsuperscript{\citep{#1} } }} % 设置上标显示参考文献编号的命令
\setlength{\parindent}{2em}
\lstset{language=Matlab}

% For header
\usepackage[algo2e,ruled,vlined]{algorithm2e}
\usepackage{ifthen}%这个宏包提供逻辑判断命令
\newboolean{first}%引入布尔变量
\setboolean{first}{true}%将布尔变量设置为true
\captionsetup{font={small}}
\fancypagestyle{maincontent}{
	\fancyhf{}  %清空页眉页脚设置
	\fancyhead[EL, OR]{\thepage}
	\fancyhead[EC]{\newtitle}
	\fancyhead[OC]{\newtitle}
	\renewcommand\headrulewidth{0pt}
}

\fancypagestyle{firstpage}{
	\fancyhf{}  
}

\newcommand{\makefirstpageheadrule}{
	\makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.2pt}}%上0.5pt，下0.2pt
	\rule[0.7\baselineskip]{\headwidth}{0.5pt}
}

\newcommand{\makeheadrule}{
	\rule[0.7\baselineskip]{\headwidth}{0.75pt}
}

\renewcommand{\headrule}{
	\ifthenelse{\boolean{first}}{\makeheadrule}
	{\makefirstpageheadrule}
}

% \pagestyle{fancy}
% \lhead{实验名称：\newtitle}
% \chead{姓名：\name}
% \rhead{学号：\stuid}
