% umbruch-position.cls — LaTeX-Template für Um:bruch Positionspapiere
% Version 1.0, April 2026
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{umbruch-position}[2026/04/01 Um:bruch Positionspapier]

\LoadClass[11pt,a4paper]{article}

% ===== Pakete =====
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{colortbl}
\RequirePackage{microtype}
\RequirePackage{parskip}
\RequirePackage{etoolbox}
\RequirePackage{lastpage}
\RequirePackage{ifthen}

% ===== Farben (Um:bruch CI) =====
\definecolor{umbruch-red}{HTML}{E63946}
\definecolor{umbruch-teal}{HTML}{2A9D8F}
\definecolor{umbruch-dark}{HTML}{1D3557}
\definecolor{umbruch-gold}{HTML}{E9C46A}
\definecolor{umbruch-ink}{HTML}{2B2B2B}
\definecolor{umbruch-muted}{HTML}{6B7280}
\definecolor{umbruch-bg}{HTML}{F5F5F4}
\definecolor{umbruch-border}{HTML}{E5E5E5}

% ===== Seitengeometrie =====
\geometry{
  left=25mm,
  right=25mm,
  top=30mm,
  bottom=30mm,
  headheight=15mm,
  headsep=8mm,
  footskip=12mm,
}

% ===== Schrift =====
\RequirePackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

% ===== Hyperlinks =====
\hypersetup{
  colorlinks=true,
  linkcolor=umbruch-dark,
  urlcolor=umbruch-teal,
  citecolor=umbruch-dark,
  pdfborder={0 0 0},
}

% ===== Custom Fields =====
\newcommand{\positionsnummer}[1]{\def\@positionsnummer{#1}}
\newcommand{\untertitel}[1]{\def\@untertitel{#1}}
\newcommand{\zusammenfassung}[1]{\def\@zusammenfassung{#1}}
\newcommand{\schlagworte}[1]{\def\@schlagworte{#1}}
\newcommand{\versionsnummer}[1]{\def\@versionsnummer{#1}}
\newcommand{\logopath}[1]{\def\@logopath{#1}}
\newcommand{\dokumenttyp}[1]{\def\@dokumenttyp{#1}}

\def\@positionsnummer{PP-001}
\def\@dokumenttyp{Positionspapier}
\def\@untertitel{}
\def\@zusammenfassung{}
\def\@schlagworte{}
\def\@versionsnummer{1.0}
\def\@logopath{}

% ===== Kopf-/Fusszeile =====
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.2pt}

\fancyhead[L]{%
  \small\color{umbruch-muted}%
  \ifthenelse{\equal{\@logopath}{}}{%
    \textbf{\color{umbruch-ink}Um:bruch} \textcolor{umbruch-muted}{| re:shape}%
  }{%
    \raisebox{-2mm}{\includegraphics[height=10mm]{\@logopath}}%
  }%
}
\fancyhead[R]{\small\color{umbruch-muted}\@positionsnummer}
\fancyfoot[L]{\footnotesize\color{umbruch-muted}Um:bruch -- Denkfabrik f\"ur gesellschaftlichen Wandel}
\fancyfoot[R]{\footnotesize\color{umbruch-muted}Seite \thepage\ von \pageref{LastPage}}

% Erste Seite ohne Header
\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[L]{\footnotesize\color{umbruch-muted}Um:bruch -- Denkfabrik f\"ur gesellschaftlichen Wandel}
  \fancyfoot[R]{\footnotesize\color{umbruch-muted}Seite \thepage\ von \pageref{LastPage}}
}

% ===== Abschnittsformatierung =====
\titleformat{\section}
  {\Large\bfseries\color{umbruch-dark}}
  {\thesection}{0.8em}{}
  [\vspace{-0.3em}\textcolor{umbruch-red}{\rule{3cm}{1.5pt}}]

\titleformat{\subsection}
  {\large\bfseries\color{umbruch-ink}}
  {\thesubsection}{0.6em}{}

\titleformat{\subsubsection}
  {\normalsize\bfseries\color{umbruch-ink}}
  {\thesubsubsection}{0.5em}{}

% ===== Titelseite =====
\renewcommand{\maketitle}{%
  \thispagestyle{plain}
  \begin{center}
    \vspace*{5mm}

    % Logo (falls vorhanden)
    \ifthenelse{\equal{\@logopath}{}}{%
      {\fontsize{28}{32}\selectfont\bfseries\color{umbruch-ink}Um\textcolor{umbruch-red}{:}bruch}\\[2mm]
      {\small\color{umbruch-muted}re\textcolor{umbruch-red}{:}shape -- Denkfabrik f\"ur gesellschaftlichen Wandel}
    }{%
      \includegraphics[height=20mm]{\@logopath}
    }

    \vspace{8mm}

    % Dokumenttyp und Nummer
    {\small\color{umbruch-muted}\MakeUppercase{\@dokumenttyp} \@positionsnummer}

    \vspace{4mm}

    % Titel
    {\fontsize{22}{26}\selectfont\bfseries\color{umbruch-dark}\@title}

    % Untertitel
    \ifthenelse{\equal{\@untertitel}{}}{}{%
      \par\vspace{3mm}
      {\large\color{umbruch-ink}\@untertitel\par}
    }

    \vspace{6mm}

    % Metadaten-Linie
    {\small\color{umbruch-muted}%
      \@author\quad|\quad\@date\quad|\quad Version \@versionsnummer
    }

    \vspace{6mm}

    % Trennlinie
    \textcolor{umbruch-red}{\rule{0.6\textwidth}{1.5pt}}

    % Schlagworte (zuerst, weil kurz und sonst auf eigene Seite rutschen würden)
    \ifthenelse{\equal{\@schlagworte}{}}{}{%
      \vspace{4mm}
      {\footnotesize\color{umbruch-muted}\textbf{Schlagworte:} \@schlagworte}
    }

    % Zusammenfassung
    \ifthenelse{\equal{\@zusammenfassung}{}}{}{%
      \vspace{4mm}
      \begin{minipage}{0.85\textwidth}
        \small\color{umbruch-ink}
        \textbf{Zusammenfassung.}
        \@zusammenfassung
      \end{minipage}
    }

  \end{center}
  \vspace{4mm}
}

% ===== Custom Environments =====

% Infobox
\newsavebox{\infoboxbox}
\newenvironment{infobox}[1][]{%
  \begin{center}
  \begin{minipage}{0.92\textwidth}
  \setlength{\parskip}{0.5em}
  \begin{lrbox}{\infoboxbox}
    \begin{minipage}{\dimexpr\textwidth-2\fboxsep}
    \vspace{0.5em}
    \ifthenelse{\equal{#1}{}}{}{\textbf{\color{umbruch-dark}#1}\par\vspace{0.3em}}
}{%
    \vspace{0.5em}
    \end{minipage}%
  \end{lrbox}%
  \colorbox{umbruch-bg}{\usebox{\infoboxbox}}
  \end{minipage}
  \end{center}
  \vspace{0.5em}
}

% Redaktioneller Kommentar (linke Linie)
\newenvironment{redkommentar}{%
  \vspace{1em}
  \noindent
  \begin{minipage}{\textwidth}
  \setlength{\parskip}{0.5em}
  \hspace{0mm}%
  \textcolor{umbruch-red}{\vrule width 2.5pt}%
  \hspace{4mm}%
  \begin{minipage}{\dimexpr\textwidth-7mm}
  \small\color{umbruch-ink}
  \textbf{\color{umbruch-red}Redaktioneller Kommentar (Um:bruch)}\\[0.5em]
}{%
  \end{minipage}
  \end{minipage}
  \vspace{1em}
}

% Metadaten-Box für KI-Reviews
\newsavebox{\metaboxbox}
\newenvironment{metabox}[1][Analyse-Metadaten]{%
  \vspace{0.5em}
  \noindent
  \begin{minipage}{\textwidth}
  \begin{lrbox}{\metaboxbox}
    \begin{minipage}{\dimexpr\textwidth-2\fboxsep}
    \vspace{0.5em}
    \textbf{\color{umbruch-dark}#1}\par\vspace{0.3em}
    \small
}{%
    \vspace{0.5em}
    \end{minipage}%
  \end{lrbox}%
  \colorbox{umbruch-bg}{\usebox{\metaboxbox}}
  \end{minipage}
  \vspace{0.5em}
}

% Bewertungstabelle
\newcommand{\bewertung}[2]{%
  \textbf{#1:} \textcolor{%
    \ifstrequal{#2}{Gut}{umbruch-teal}{%
    \ifstrequal{#2}{Einseitig}{umbruch-gold}{%
    \ifstrequal{#2}{Teilweise nachvollziehbar}{umbruch-gold}{%
    \ifstrequal{#2}{Unzureichend}{umbruch-red}{%
    \ifstrequal{#2}{Defizit\"ar}{umbruch-red}{%
    \ifstrequal{#2}{L\"uckenhaft}{umbruch-gold}{umbruch-ink}}}}}}%
  }{#2}%
}

\endinput
