\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{book}

% DOCUMENT TYPE
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% MAIN COLORS
\RequirePackage[table]{xcolor}
\definecolor{main}{HTML}{454138}
\definecolor{extra1}{HTML}{cd664d}
\definecolor{extra2}{HTML}{b4af9a}
\definecolor{extra3}{HTML}{dcd8c0}
\definecolor{codestring}{HTML}{98C379}
\definecolor{shadow}{HTML}{908c7b}
\definecolor{background}{HTML}{ffffff}
\pagecolor{background}
\color{main}

%%% PACKAGES %%%
\RequirePackage[a4paper, total={6in, 8in}]{geometry}
\RequirePackage{indentfirst}
\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}
\RequirePackage{tikz}
\usetikzlibrary{calc,fit,backgrounds,shapes.geometric}
\RequirePackage{algorithmic}
\RequirePackage{fancyhdr}
\RequirePackage[explicit]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{hyperref}
\RequirePackage{listings}
\usepackage[most]{tcolorbox}

%%% STYLE %%%
% NIER FONT
\renewcommand\familydefault{\sfdefault}

% SECTION STYLE
\titleformat{\section}[hang]{\sffamily\Large}{}{0mm}
{{\MakeUppercase{#1}}}[\smallskip]


% HEADERS AND FOOTERS
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\setlength\headheight{40pt}
\addtolength{\topmargin}{-16pt}
\renewcommand{\sectionmark}[1]{ \markright{\thesection\ #1}{} }
\renewcommand{\subsectionmark}[1]{ \markright{\thesubsection\ #1}{} }
\fancyfoot[C]{\thepage}

% HYPERREF SETTINGS
\hypersetup{
    colorlinks=true,
    linkcolor=extra1,
    urlcolor=extra1,
    citecolor=extra1,
    filecolor=extra1
}

% CODE HIGHLIGHT
\lstdefinestyle{codestyle}{
    backgroundcolor=\color{main},
    commentstyle=\color{extra2},
    keywordstyle=\color{extra1},
    numberstyle=\tiny\color{main},
    stringstyle=\color{codestring},
    basicstyle=\ttfamily\footnotesize\color{background},
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2
}
\lstset{style=codestyle}

% Quote Box
\newtcolorbox{nierquotebox}[1][]{
    enhanced,
    colback=extra3,
    borderline west={9pt}{0pt}{main},
    borderline west={3pt}{9pt}{extra3},
    borderline west={2pt}{12pt}{main},
    boxrule=0pt,
    frame hidden,
    leftrule=12pt,
    drop fuzzy shadow=main,
    sharp corners,
    #1
}

% Box
\newtcolorbox{nierbox}[1][]{
    enhanced,
    colback=extra3,
    boxrule=0pt,
    frame hidden,
    colbacktitle=main,
    titlerule=0mm,
    drop fuzzy shadow=main,
    sharp corners,
    toptitle=2mm,
    bottomtitle=1mm,
    #1
}

% Quote
\newtcolorbox{nierquote}[1][]{
    enhanced,
    colback=background,
    borderline horizontal={1pt}{0pt}{main},
    boxrule=0pt,
    frame hidden,
    toprule=2pt,
    bottomrule=2pt,
    sharp corners,
    halign=center,
    #1
}



