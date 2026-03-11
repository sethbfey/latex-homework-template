% --- myhw.cls ---
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myhw}

% --- BASE CLASS ARGS ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt, letterpaper]{article}

% --- REQUIRED STRUCTURAL PACKAGES ---
\RequirePackage[T1]{fontenc}
\RequirePackage{babel}
\RequirePackage[hmargin=1.50in, tmargin=0.75in]{geometry}
\RequirePackage{eulervm}  % font
\RequirePackage{amsthm}   % for \qed symbol
\RequirePackage{tabularx} % for bottom section X column

% --- GLOBAL SETTINGS ---
\setlength{\parindent}{0pt}
\newlength{\hiddenlen}
\setlength{\hiddenlen}{0.1\textwidth}
\newcommand{\widebar}[1]{\par\hrule height #1\relax\par}
\newcommand{\bsl}{\vspace{\baselineskip}}


% ========================================
% TITLE PAGE
% ========================================

% --- TITLE PAGE ARGS ---
\newcommand{\@school}{}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}

\newcommand{\@semester}{}
\newcommand{\semester}[1]{\renewcommand{\@semester}{#1}}

\newcommand{\@course}{}
\newcommand{\course}[1]{\renewcommand{\@course}{#1}}

\newcommand{\@instructor}{}
\newcommand{\instructor}[1]{\renewcommand{\@instructor}{#1}}

\newcommand{\@student}{}
\newcommand{\student}[1]{\renewcommand{\@student}{#1}}

\newcommand{\@duedate}{}
\newcommand{\duedate}[1]{\renewcommand{\@duedate}{#1}}

% --- CUSTOM MAKETITLE ---
\renewcommand{\maketitle}{%
    \thispagestyle{empty}

    \vspace*{0.15\textheight}

    {% --- TOP SECTION ---
        \centering\scshape\large
        \@school, \@semester

        \vspace{0.01\textheight}

        \@course
        \par
    }

    \vspace{0.04\textheight}
        
    {% --- MIDDLE SECTION ---
        \widebar{1pt}

        \vspace{0.03\textheight}

        \centering\Huge\bfseries
        \@title

        \vspace{0.03\textheight}

        \widebar{1pt}

        \vspace{0.003\textheight}

        \widebar{1pt}
        \par
    }

    \vspace{0.04\textheight}

    {% --- BOTTOM ---
        \scshape\large
        \begin{tabularx}{\textwidth}{X l @{\hspace{\hiddenlen}} r X}
            & Instructor: & \@instructor & \\[0.01\textheight]
            & Student:    & \@student    & \\[0.01\textheight]
            & Due Date:   & \@duedate    &
        \end{tabularx}
        \par
    }
    
    \clearpage 
    \setcounter{page}{1}
}


% ========================================
% EXERCISE ENV
% ========================================

\newenvironment{exercise}[1]{%
    \par
    \widebar{1pt}

    \vspace{0.02\textheight}

    \noindent\textbf{EXERCISE #1.}\quad
    \ignorespaces
}{%
    \par

    \vspace{0.02\textheight}

    \widebar{1pt}
    \par

    \vspace{0.02\textheight}

    \ignorespacesafterend
}

% ========================================
% SOLUTION ENV
% ========================================
\newenvironment{solution}{%
    \par
    \noindent\textbf{SOLUTION.}\quad
    \ignorespaces
}{%
    \par
    \clearpage
    \ignorespacesafterend
}