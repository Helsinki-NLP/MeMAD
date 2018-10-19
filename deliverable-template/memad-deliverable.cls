\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{memad-deliverable}[2018/10/09 Class for MeMAD deliverables]

%---------%
% IMPORTS %
%---------%

\LoadClass[twocolumn,twoside]{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage[utf8]{inputenc}
\RequirePackage{array, fancyhdr, float, graphicx, multirow, placeins, pgffor, sectsty}
\RequirePackage[font=normalsize,labelfont=bf]{caption}

\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}}

%--------%
% COLORS %
%--------%

\RequirePackage{xcolor}

\definecolor{ultramarine}{HTML}{073763}
\newcommand{\titlecolor}{\color{ultramarine}}

\definecolor{azure}{HTML}{02A1CB}
\newcommand{\subtitlecolor}{\color{azure}}

\definecolor{black}{HTML}{000000}
\newcommand{\bodycolor}{\color{black}}

\definecolor{grey}{HTML}{999999}
\newcommand{\footnotecolor}{\color{grey}}

%----------%
% METADATA %
%----------%

\renewcommand\@title{MeMAD Deliverable}
\renewcommand\@author{}
\newcommand\@abstract{}

\newcommand\deliverableno[1]{\renewcommand\@deliverableno{#1}}
\newcommand\@deliverableno{x.x}

\newcommand\deliverablename[1]{\renewcommand\@deliverablename{#1}}
\newcommand\@deliverablename{[Add deliverable name]}

\newcommand\grantno[1]{\renewcommand\@grantno{#1}}
\newcommand\@grantno{780069}

\newcommand\acronym[1]{\renewcommand\@acronym{#1}}
\newcommand\@acronym{MeMAD}

\newcommand\shorttitle[1]{\renewcommand\@shorttitle{#1}}
\newcommand\@shorttitle{Methods for Managing Audiovisual Data}

\newcommand\longtitle[1]{\renewcommand\@longtitle{#1}}
\newcommand\@longtitle{Methods for Managing Audiovisual Data:\newline Combining Automatic Efficiency with\newline Human Accuracy}

\newcommand\fundingscheme[1]{\renewcommand\@fundingscheme{#1}}
\newcommand\@fundingscheme{H2020--ICT--2016--2017/H2020--ICT--2017--1}

\newcommand\projversiondate[1]{\renewcommand\@projversiondate{#1}}
\newcommand\@projversiondate{3.10.2017}

\newcommand\projstartdate[1]{\renewcommand\@projstartdate{#1}}
\newcommand\@projstartdate{1.1.2018}

\newcommand\duedate[1]{\renewcommand\@duedate{#1}}
\newcommand\@duedate{Add date}

\newcommand\submissiondate[1]{\renewcommand\@submissiondate{#1}}
\newcommand\@submissiondate{Project manager will fill in}

\newcommand\beneficiary[1]{\renewcommand\@beneficiary{#1}}
\newcommand\@beneficiary{Add lead beneficiary}

\newcommand\disseminationlevel[1]{\renewcommand\@disseminationlevel{#1}}
\newcommand\@disseminationlevel{Add dissemination level}

\newcommand\reprname[1]{\renewcommand\@reprname{#1}}
\newcommand\@reprname{Prof. Mikko Kurimo}

\newcommand\repraffil[1]{\renewcommand\@repraffil{#1}}
\newcommand\@repraffil{AALTO–KORKEAKOULUSÄÄTIÖ, Aalto University School of Electrical Engineering,\linebreak Department of Signal Processing and Acoustics}

\newcommand\repremail[1]{\renewcommand\@repremail{#1}}
\newcommand\@repremail{mikko.kurimo@aalto.fi}

%----------%
% HEADINGS %
%----------%

\sectionfont{\titlecolor}

%-------------%
% FIRST PAGES %
%-------------%

\newcommand{\titlepages}{
    \thispagestyle{titles}
    
    \twocolumn[
        \fontsize{26}{31}
        \fontfamily{cmss}
        \fontseries{m}
        \fontshape{n}
        \selectfont
        \titlecolor
        \@title
        
        \vspace{.2em}
        
        \fontsize{16}{19}
        \fontfamily{bch}
        \fontseries{m}
        \fontshape{it}
        \selectfont
        \subtitlecolor
        D\@deliverableno~\@deliverablename
        
        \vspace{2em}
        
        \fontsize{12}{14}
        \fontfamily{bch}
        \fontseries{m}
        \fontshape{n}
        \selectfont
        \bodycolor
        
        \renewcommand{\arraystretch}{1.6}
        
        \begin{tabular}{p{.45\textwidth}p{.55\textwidth}}
            Grant agreement number
            & \@grantno
            \\
            Action acronym
            & \@acronym
            \\
            Action title
            & \@longtitle
            \\
            Funding scheme
            & \@fundingscheme
            \\
            Version date of the Annex I against\newline
            which the assessment will be made
            & \@projversiondate
            \\
            Start date of the project
            & \@projstartdate
            \\
            Due date of the deliverable
            & \@duedate
            \\
            Actual date of submission
            & \@submissiondate
            \\
            Lead beneficiary for the deliverable
            & \@beneficiary
            \\
            Dissemination level of the deliverable
            & \@disseminationlevel
        \end{tabular}
        
        \vspace{4em}
        
        \textbf{Action coordinator's scientific representative}\newline
        \@reprname\newline
        \@repraffil\newline
        \@repremail
        
        \vspace{2em}
        
        \renewcommand{\arraystretch}{1}
    ]%
    
    \FloatBarrier\clearpage

    \pagestyle{body}
    
    \twocolumn[
        \vspace{5em}
        
        \@author
        \@abstract
        
        \vspace{2em}
    ]%
    
    \FloatBarrier\clearpage
    
    \fontsize{12}{14}
    \fontfamily{bch}
    \fontseries{m}
    \fontshape{n}
    \selectfont
    \bodycolor
    
    \onecolumn
}

\renewcommand{\author}[1]{
    \renewcommand\@author{
        \fontsize{12}{14}
        \fontfamily{bch}
        \fontseries{m}
        \fontshape{n}
        \selectfont
        \bodycolor
        
        \renewcommand{\arraystretch}{1.6}
        
        \resizebox{\textwidth}{!}{
            \begin{tabular}{|M{.3\textwidth}|M{.3\textwidth}|M{.3\textwidth}|}
                \hline
                \multicolumn{3}{|c|}{\textbf{Authors in alphabetical order}} \\
                \hline
                Name & Beneficiary & e-mail \\
                \hline
                #1 \\
                \hline
            \end{tabular}
        }
        
        \vspace{2em}
        
        \renewcommand{\arraystretch}{1}
    }
}

\renewcommand{\abstract}[1]{
    \renewcommand\@abstract{
        \fontsize{12}{14}
        \fontfamily{bch}
        \fontseries{m}
        \fontshape{n}
        \selectfont
        \bodycolor
        
        \renewcommand{\arraystretch}{1.6}
        
        \resizebox{\textwidth}{!}{
            \begin{tabular}{|M{\textwidth}|}
                \hline
                \textbf{Abstract} \\
                \hline
                #1 \\
                \hline
            \end{tabular}
        }
        
        \renewcommand{\arraystretch}{1}
    }
}

%-------------------%
% HEADER AND FOOTER %
%-------------------%

\fancypagestyle{body}{
    \renewcommand{\headrulewidth}{0pt}
    
    \fancyhead{}
    \fancyfoot{}
    
    \fancyhead[LE,LO]{
        \scalebox{.3}{\includegraphics{memadlogo}}
    }
    
    \fancyhead[RE,RO]{
        \fontsize{9}{12} %
        \fontfamily{cmss} %
        \fontseries{m} %
        \fontshape{n} %
        \selectfont %
        \titlecolor %
        \texttt{memad.eu}\\
        \texttt{info@memad.eu}\\[1em]
        Twitter~--~@memadproject\\
        Linkedin~--~MeMAD Project
    }
    
    \fancyfoot[LE,RO]{
        \vfill %
        \vspace{-2em} %
        \fontsize{12}{14} %
        \fontfamily{bch} %
        \fontseries{m} %
        \fontshape{n} %
        \selectfont %
        \footnotecolor %
        \thepage
    }
    
    \fancyfoot[CE,CO]{
        \vfill %
        \vspace{-2em} %
        \fontsize{10}{14} %
        \fontfamily{bch} %
        \fontseries{m} %
        \fontshape{it} %
        \selectfont %
        \footnotecolor %
        \@acronym~--~\@shorttitle\\ Deliverable~\@deliverableno
    }
}

\fancypagestyle{titles}{
    \renewcommand{\headrulewidth}{0pt}
    
    \fancyhead{}
    \fancyfoot{}
    
    \fancyfoot[CE,CO]{
        \begin{tabular}{M{.18\textwidth}M{.82\textwidth}}
            \scalebox{.4}{\includegraphics{euflag}}
            &
            \fontsize{9}{12} %
            \fontfamily{bch} %
            \fontseries{m} %
            \fontshape{it} %
            \selectfont %
            \footnotecolor %
            \begin{flushleft}
                MeMAD project has received funding from the European Union’s Horizon 2020 research and\\ innovation programme under grant agreement No 780069. This document has been produced\\ by theMeMAD project. The content in this document represents the views of the authors, and\\ the European Commission has no liability in respect of the content.
            \end{flushleft}%
        \end{tabular}%
    }
}