% Copyright (C) 2014 Renan Sebem.
% udesc.cls is free: you can redistribute it and/or modify it.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{udesc}

\PassOptionsToClass{a4paper}{report}
\PassOptionsToClass{12pt}{report}
\newcommand{\pontos}{12pt}
\newcommand{\pontosemeio}{18pt}

\PassOptionsToClass{twoside}{report}

%\PassOptionsToPackage{hidelinks}{hyperref}
%\RequirePackage[hidelinks]{hyperref}

%\PassOptionsToClass{portuguese}{report}

\LoadClassWithOptions{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MARGENS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%\RequirePackage[twoside,top=2cm,bottom=1.5cm,inner=2.5cm,outer=1.5cm]{geometry} %A5

\RequirePackage[twoside,top=3cm,bottom=2cm,inner=3cm,outer=2cm]{geometry} %A4 impresso

\setlength{\textwidth}{16cm}

%\RequirePackage[twoside,top=3cm,bottom=2cm,inner=2cm,outer=2cm]{geometry} %A4 digital

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INDENTAÇÃO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{indentfirst}
\setlength\parindent{1.25cm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODIFICAÇÃO DA FONTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%\RequirePackage[latin1]{inputenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDIOMA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[brazil,english]{babel}
\selectlanguage{brazil}

%\RequirePackage{hyphenat}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMARIO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tocloft}
\RequirePackage{etoolbox}% Capitulos e secoes em caixa alta

\makeatletter
\patchcmd{\l@chapter}
  {\cftchapfont #1}%   search pattern
  {\cftchapfont {#1}}% replace by
  {}%                  success
  {}%                  failure
\makeatother

\makeatletter
\patchcmd{\l@section}
  {\cftsecfont #1}%   search pattern
  {\cftsecfont {#1}}% replace by
  {}%                  success
  {}%                  failure
\makeatother

\newcommand{\numberspacing}{1.4cm}

\renewcommand{\contentsname}{Sum\'{a}rio}
\tocloftpagestyle{empty}
\renewcommand{\cfttoctitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftaftertoctitle}{\hfill}
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
\renewcommand{\cftbeforetoctitleskip}{0cm}
\renewcommand{\cftaftertoctitleskip}{0cm}

\cftsetindents{chapter}{0in}{\numberspacing}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand\cftchapfont{\bfseries\MakeUppercase}
%\renewcommand{\cftchappagefont}{}



\cftsetindents{section}{0in}{\numberspacing}
\renewcommand{\cftsecpagefont}{}
\renewcommand{\cftsecfont}{\MakeUppercase}

\cftsetindents{subsection}{0in}{\numberspacing}
\renewcommand{\cftsubsecpagefont}{}
\renewcommand{\cftsubsecfont}{\bfseries}

\cftsetindents{subsubsection}{0in}{\numberspacing}

\cftsetindents{paragraph}{0in}{\numberspacing}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIGURAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{chngcntr}

\counterwithout{figure}{chapter}

\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\figurename}{Figura}
%\captionsetup[figure]{labelsep=endash}
\captionsetup[figure]{labelsep=endash, justification=justified,singlelinecheck=false,format=hang}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE FIGURAS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\renewcommand{\cftfigpresnum}{\textsc{Figura }}
%\renewcommand{\cftfigaftersnum}{\ \ - \ \ }
%\setlength{\cftfignumwidth}{5.5em}
%\renewcommand{\cftloftitlefont}{\bfseries\MakeUppercase}
%\renewcommand{\cftbeforeloftitleskip}{0cm}
%\renewcommand{\cftafterloftitleskip}{0cm}
%\renewcommand{\listfigurename}{Lista de Ilustra\c{c}\~{o}es}


\cftsetindents{figure}{0in}{0.5in}

\renewcommand{\cftfigpresnum}{\textsc{Figura }}
\renewcommand{\cftfigaftersnum}{ \hfil -- }
\setlength{\cftfignumwidth}{6.0em}
%\addtolength{\cftfignumwidth}{10pt}
\renewcommand{\cftloftitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftbeforeloftitleskip}{0cm}
\renewcommand{\cftafterloftitleskip}{0.8cm}
\renewcommand{\listfigurename}{Lista de Ilustra\c{c}\~{o}es}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABELAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\counterwithout{table}{chapter}

\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\tablename}{Tabela}
%\captionsetup[table]{labelsep=endash}
\captionsetup[table]{labelsep=endash, justification=justified, singlelinecheck=false,format=hang}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TABELAS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\cftsetindents{table}{0in}{0.5in}

\renewcommand{\cfttabpresnum}{\textsc{Tabela }}
\renewcommand{\cfttabaftersnum}{ \hfil --  }
\setlength{\cfttabnumwidth}{6.6em}
\renewcommand{\cftbeforelottitleskip}{0cm}
\renewcommand{\cftafterlottitleskip}{0cm}
\renewcommand{\cftlottitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\listtablename}{Lista de Tabelas}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTAS CUSTOMIZADA %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE ACRONIMOS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[acronym,symbols,nopostdot,toc,shortcuts]{glossaries}
\RequirePackage{tabu}

\newglossarystyle{udesc_acronym}{%
\glossarystyle{super}%
\renewenvironment{theglossary}{%
\begin{longtabu} to \textwidth {@{}rX@{}}}{%
\end{longtabu}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIMBOLOS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newglossarystyle{udesc_symbol}{%
\glossarystyle{super}%
\renewenvironment{theglossary}{%
\begin{longtabu} to \textwidth {@{}lX@{}}}{%
\end{longtabu}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE DEFINIÇÕES %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tocloft}
\RequirePackage{amssymb}
\newcommand{\nomelistadefinicoes}{\hfill Lista de Definições\hfill}

\newlistof{definicao}{lodef}{\nomelistadefinicoes}

\newcommand{\definicao}[2]{%
\refstepcounter{definicao}%
%\par\noindent\textbf{definicao \thedefinicao. #1}
{\vspace{\baselineskip}\noindent\let\par\relax\textbf{Definição \thedefinicao \ }\textit{(#1).} %
#2  \strut\hfill $\blacklozenge$ \vspace{\baselineskip}}%
\addcontentsline{lodef}{definicao}%
%{\protect\numberline{\thechapter.\thedefinicao}#1}\par}%
{\protect\numberline{\thedefinicao}#1}\par}

\renewcommand{\cftdefinicaopresnum}{\textsc{Definição }}
\renewcommand{\cftdefinicaoaftersnum}{ \hfil -- }
\setlength{\cftdefinicaonumwidth}{7.6em}
\renewcommand{\cftlodeftitlefont}{\hfil\bfseries\MakeUppercase}
\renewcommand{\cftafterlodeftitle}{\hfil}
\renewcommand{\cftbeforelodeftitleskip}{0cm}
\renewcommand{\cftafterlodeftitleskip}{.8cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE PROPOSIÇÕES %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newcommand{\nomelistaproposicoes}{\hfill Lista de Proposições\hfill}

\newlistof{proposicao}{loprop}{\nomelistaproposicoes}

\newcommand{\proposicao}[2]{%
\refstepcounter{proposicao}%
%\par\noindent\textbf{proposicao \theproposicao. #1}%
{\vspace{\baselineskip}\noindent\let\par\relax\textbf{Proposição \theproposicao \ }\textit{(#1).} %
#2\vspace{\baselineskip}}%
\addcontentsline{loprop}{proposicao}%
%{\protect\numberline{\thechapter.\theproposicao}#1}\par}%
{\protect\numberline{\theproposicao}#1}\par}

\renewcommand{\cftproposicaopresnum}{\textsc{Proposição }}
\renewcommand{\cftproposicaoaftersnum}{ \hfil -- }
\setlength{\cftproposicaonumwidth}{8.2em}
\renewcommand{\cftloproptitlefont}{\hfil\bfseries\MakeUppercase}
\renewcommand{\cftafterloproptitle}{\hfil}
\renewcommand{\cftbeforeloproptitleskip}{0cm}
\renewcommand{\cftafterloproptitleskip}{.8cm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TEOREMAS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\nomelistateoremas}{\hfill Lista de Teoremas\hfill}

\newlistof{teorema}{loteo}{\nomelistateoremas}

\newcommand{\teorema}[2]{%
\refstepcounter{teorema}%
%\par\noindent\textbf{teorema \theteorema. #1}%
{\vspace{\baselineskip}\noindent\let\par\relax\textbf{Teorema \theteorema \ }\textit{(#1).} %
#2\vspace{\baselineskip}}%
\addcontentsline{loteo}{teorema}%
%{\protect\numberline{\thechapter.\theteorema}#1}\par}%
{\protect\numberline{\theteorema}#1}\par}

\renewcommand{\cftteoremapresnum}{\textsc{Teorema }}
\renewcommand{\cftteoremaaftersnum}{ \hfil -- }
\setlength{\cftteoremanumwidth}{7.6em}
\renewcommand{\cftloteotitlefont}{\hfil\bfseries\MakeUppercase}
\renewcommand{\cftafterloteotitle}{\hfil}
\renewcommand{\cftbeforeloteotitleskip}{0cm}
\renewcommand{\cftafterloteotitleskip}{.8cm}



%%%%%%%%%%%%%%%%%%%%%
% Lista de algoritmos
%%%%%%%%%%%%%%%%%%%%

\RequirePackage{algorithm}

\makeatletter
\renewcommand{\ALG@name}{Algoritmo}
\makeatother

\renewcommand{\listalgorithmname}{Lista de Algoritmos}


\makeatletter
\begingroup
  \let\newcounter\@gobble
  \let\setcounter\@gobbletwo
  \globaldefs\@ne
  \let\c@loadepth\@ne
  \newlistof{algoritmos}{loa}{\listalgorithmname}
\endgroup
\let\l@algorithm\l@algoritmos
\makeatother

\renewcommand{\cftalgoritmospresnum}{\textsc{Algoritmo }}
\renewcommand{\cftalgoritmosaftersnum}{ \hfil -- }
\setlength{\cftalgoritmosnumwidth}{8.5em}
\renewcommand{\cftloatitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftafterloatitle}{\hfill}
\renewcommand{\cftbeforeloatitleskip}{0cm}
\renewcommand{\cftafterloatitleskip}{0.8cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE ABREVIAÇÕES E LISTA DE SIMBOLOS%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\RequirePackage{enumitem}
%\RequirePackage{acro}
%
%\newlist{acronyms}{description}{1}
%\newcommand*\addcolon[1]{#1}
%\setlist[acronyms]{
%	labelwidth=1.7cm,
% 	labelindent= 0cm,
%	leftmargin=1.9cm,
% 	noitemsep,
%	itemindent=0cm,
%	font=\addcolon
%}
%\acsetup{list-type=acronyms,hyperref=false}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyhdr}

\fancypagestyle{udesc}{%
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[LE, RO]{\thepage}
}


\fancypagestyle{vazio}{%
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RO, LE]{}
}

\setlength{\headheight}{15pt}

\pagestyle{vazio}






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPÍTULO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\addto\captionsbrazil{\renewcommand{\chaptername}{}}
\addto\captionsenglish{\renewcommand{\chaptername}{}}
\newcommand{\chapternumwidth}{4ex}
\newcommand{\chaptersep}{}

%\renewcommand\raggedchapter{\raggedrigth}

\makeatletter
\def\@makechapterhead#1{%
	\thispagestyle{udesc}
	\cleardoublepage%
	\noindent%
	%\raggedright
	\parbox[b]{\textwidth}{%
		\normalfont
		\bfseries
    	\parbox[t]{\chapternumwidth}{\MakeUppercase{\chaptername} \thechapter \chaptersep}%
    	\parbox[t]{\textwidth-\chapternumwidth}{
    		\interlinepenalty\@M\raggedright%
          	\MakeUppercase{#1}
			}%
		%\vspace*{0cm}
    	}%\\%[2pt]%
	\vspace{\pontosemeio}%
}%
\makeatother

\makeatletter
\def\@makeschapterhead#1{%
	\thispagestyle{udesc}
	\cleardoublepage%
	\noindent%
	\parbox[b]{\textwidth}{%
		\normalfont
		\bfseries
    	\parbox[t]{\chapternumwidth}{\MakeUppercase{\chaptername} \chaptersep}%
    	\parbox[t]{\textwidth}{
    		\begin{center}
    		\interlinepenalty\@M%\raggedright%
          	\MakeUppercase{#1}
          \end{center}
			}%
    	}\\[2pt]%
	\vspace{0pt}%
}%
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SEÇÃO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[explicit]{titlesec}

%\titleformat{\section}{\MakeUppercase}{\thesection}{1em}{0cm}
\titleformat{\section}{\normalfont}{\thesection}{1em}{\MakeUppercase{#1}}

%\titleformat{hcommandi}[hshapei]{hformati}{hlabeli}{hsepi}{hbeforei}[hafteri]

\titleformat{\subsection}
  {\bfseries}
  {\thesubsection}{1em}{#1}
  
 \titleformat{\subsubsection}
  {}
  {\thesubsubsection}{1em}{#1}
  
  
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA & COMANDOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xcolor}





\providecommand{\instituicaodata}{}
\newcommand{\instituicao}[1]{\renewcommand{\instituicaodata}{ {#1} } }
\newcommand{\instituicaoformat}{\fontsize{9}{10.8} \selectfont\bfseries}

\providecommand{\autordata}{}
\providecommand{\autordatanormal}{}
\newcommand{\autor}[1]{\renewcommand{\autordata}{\MakeUppercase{#1}}\renewcommand{\autordatanormal}{#1}}
\newcommand{\autorformat}{\normalfont}



\providecommand{\professordata}{}
\providecommand{\professorname}{}
\newcommand{\professor}[2][Professor:\vspace{1mm}\\]%
  {\renewcommand{\professorname}{#1}%
   \renewcommand{\professordata}{#2}}
\newcommand{\professornameformat}{}
\newcommand{\professorformat}{\large}

\providecommand{\orientadordata}{}
\providecommand{\orientadorname}{}
\newcommand{\orientador}[2][Orientador:]%
  {\renewcommand{\orientadorname}{#1}%
   \renewcommand{\orientadordata}{#2}}
\newcommand{\orientadornameformat}{}
\newcommand{\orientadorformat}{}

\providecommand{\coorientadordata}{}
\providecommand{\coorientadorname}{}
\newcommand{\coorientador}[2][Co-orientador:]%
  {\renewcommand{\coorientadorname}{#1}%
   \renewcommand{\coorientadordata}{#2}}
\newcommand{\coorientadornameformat}{}
\newcommand{\coorientadorformat}{}

\providecommand{\titulodata}{}
\providecommand{\titulodatanormal}{}
\newcommand{\titulo}[1]{\renewcommand{\titulodata}{ \MakeUppercase{#1}}\renewcommand{\titulodatanormal}{#1}}
\newcommand{\tituloformat}{\normalfont\bfseries}


\newcommand{\tituloformatcapa}{\fontsize{11}{13.2} \selectfont \bfseries}

\providecommand{\subtitulodata}{}
\providecommand{\subtitulodatanormal}{}
\newcommand{\subtitulo}[1]{\renewcommand{\subtitulodata}{\textbf{:}\\ \MakeUppercase{#1}}\renewcommand{\subtitulodatanormal}{: #1}}
\newcommand{\subtituloformat}{\normalfont}

\providecommand{\tipodata}{}
\providecommand{\tipodatacitacao}{}
\newcommand{\tipo}[1]{%
\ifthenelse{\equal{#1}{1}
}
{\renewcommand{\tipodata}{\MakeUppercase{Tese de Doutorado}}
\renewcommand{\tipodatacitacao}{Tese (Doutorado)}
\definecolor{cover_color}{rgb}{0.75,.2,.14}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{2}
}
{\renewcommand{\tipodata}{\MakeUppercase{Dissertação de Mestrado}}
\renewcommand{\tipodatacitacao}{Dissertação (Mestrado)}
\definecolor{cover_color}{rgb}{0,0.5,0.29}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{3}
}
{\renewcommand{\tipodata}{\MakeUppercase{Trabalho de Conclusão de Curso}}
\renewcommand{\tipodatacitacao}{Trabalho de Conclusão de Curso}
\definecolor{cover_color}{rgb}{1,1,1}
\definecolor{font_color}{rgb}{0,0,0}
}
{}
\ifthenelse{\equal{#1}{4}
}
{\renewcommand{\tipodata}{\MakeUppercase{Relatório de Estágio}}
\renewcommand{\tipodatacitacao}{Relatório de Estágio}
\definecolor{cover_color}{rgb}{1,1,1}
\definecolor{font_color}{rgb}{0,0,0}
}
{}
\ifthenelse{\equal{#1}{5}
}
{\renewcommand{\tipodata}{\MakeUppercase{Relatório de Pós Doutorado}}
\renewcommand{\tipodatacitacao}{Relatório de Pós Doutorado}
\definecolor{cover_color}{rgb}{0.19,0.29,0.52}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{6}
}
{\renewcommand{\tipodata}{\MakeUppercase{{Trabalho de Conclusão de Curso de}}\\ \MakeUppercase{Especialização}}
\definecolor{cover_color}{rgb}{0.98,0.77,0.45}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{7}
}
{\renewcommand{\tipodata}{\MakeUppercase{Qualificação de Doutorado}}
\renewcommand{\tipodatacitacao}{Tese (Doutorado)}
\definecolor{cover_color}{rgb}{0.75,.2,.14}
\definecolor{font_color}{rgb}{1,1,1}
}
{}

}
\newcommand{\tipoformat}{\fontsize{9}{10.8} \selectfont}

\providecommand{\comentariodata}{}
\newcommand{\comentario}[1]{\renewcommand{\comentariodata}{#1}}
\newcommand{\comentarioformat}{}

\providecommand{\localdata}{}
\newcommand{\local}[1]{\renewcommand{\localdata}{\MakeUppercase{#1}}}
\newcommand{\localformat}{}
\newcommand{\localformatcapa}{\fontsize{8.7}{10.2} \selectfont}

\providecommand{\anodata}{}
\newcommand{\ano}[1]{\renewcommand{\anodata}{#1}}
\newcommand{\anoformat}{}
\newcommand{\anoformatcapa}{\fontsize{8.7}{10.2} \selectfont}








\makeatletter
\newcommand{\capa}%
{%
\if@twocolumn
  \@restonecoltrue\onecolumn
\else
  \@restonecolfalse\newpage
\fi
\thispagestyle{empty}
\newgeometry{twoside,top=0.16cm,bottom=1.5cm,inner=2.5cm,outer=0.06cm,headsep=0cm}

\noindent
\includegraphics[width = 2.28cm]{fig/Marca_UDESC_vertical.pdf}

\begin{flushleft}
     \setlength{\parskip}{0cm}
     \instituicaoformat\sffamily\instituicaodata\par
     \setlength{\parskip}{.3cm}\par
\end{flushleft}

\vfill

\vfill\vfill

\begin{flushright}
	\colorbox{cover_color}
	{
	\color{font_color}
		\begin{tabular}{c|l}
			\hspace{1cm}
			&
			\begin{minipage}[t]{8.3cm}
				\tipoformat\sffamily\tipodata
				
				\vspace{\pontos}
				\hyphenpenalty=10000
				\tituloformatcapa\sffamily\titulodata\subtituloformat\sffamily\subtitulodata \vspace{\pontos}
			\end{minipage}
		\end{tabular}
	}
\end{flushright}

\vspace{1cm}
\vfill\vfill\vfill

\begin{center}

      \autorformat\sffamily\autordata

\end{center}

\vspace{1.8cm}

\begin{center}

      \sffamily\MakeUppercase{\localformatcapa \localdata}, \anoformatcapa	\sffamily\anodata

\end{center}

\if@restonecol\twocolumn \else \newpage \fi

\cleardoublepage
\restoregeometry

}% end of \capa
\makeatother






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Folha de Rosto %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{ifthen}

\newcommand{\folhaderosto}%
{%
	\ifthenelse{\isodd{\value{page}}}
   	{\clearpage}
   	{\vfill\thispagestyle{empty}\cleardoublepage\newpage}
   	\thispagestyle{empty}
	
	\setcounter{page}{1}
%		\begin{center}
%		\setlength{\parskip}{.3cm}
%
%	{%
%     	\setlength{\parskip}{0cm}
%     	{\instituicaoformat\instituicaodata\par}
%     	\setlength{\parskip}{.3cm}\par
%     }
%	\end{center}
%	\vfill
%	%\ifnotempty{\autordata}%
  	{%
  	\begin{center}
    	\autorformat\autordata
  	\end{center}
  	}
\vfill\vfill\vfill

  {%
   \begin{center}
     {\tituloformat\titulodata\subtituloformat\subtitulodata\par} 
   \end{center}
  }%
%\ifnotempty{\comentariodata}%
  {%
   \vspace{.8cm}
\begin{flushright}


     \begin{minipage}{.5\textwidth}

         {\comentarioformat\comentariodata.}\par

       \vspace{.8cm}
      
       %\ifnotempty{\orientadordata}%
  {%
   {\orientadornameformat\orientadorname}
   {\orientadorformat\orientadordata}\protect
   \vspace{0.7cm} \\
  }
%\ifnotempty{\coorientadordata}
  {%
   {\coorientadornameformat\coorientadorname}
   {\coorientadorformat\coorientadordata}
  }

  {%
   {\professornameformat\professorname}
   {\professorformat\professordata}\protect
   \vspace{0.7cm}
  }
     \end{minipage}
   \end{flushright}
   }



\vfill\vfill
\begin{center}

      {{\localformat\localdata}\par}

      {{\anoformat\anodata}}

\end{center}

\pagebreak}%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FICHA CATALOGRAFICA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\newcommand{\fichacatalografica}%
%{%
%\vspace*{9.75cm}%
%\begin{small}%
%\noindent%
%\begin{tabularx}{\textwidth}{|lX|}%
%\hline%
%SXXXc 	& \autordatanormal \\%
%		& \hspace{0.5cm} \titulodata/ \autordatanormal. – \anodata.\\%
%                            &  \hspace{0.5cm}   xxx p.  :  il. ; 21 cm  \\%
% & \\%
%                   &       \hspace{0.5cm}     Orientador: Nome orientador \\%
%                    &    \hspace{0.5cm}       Bibliografia: 119-125 \\%
%                     &   \hspace{0.5cm}       Dissertação (mestrado)  –  Universidade do Estado de Santa Catarina, Centro de
%                         Ciências Tecnológicas, Programa de Pós-Graduação em XXX, Joinville, \anodata. \\
%  &       \\%    
%                      &  \hspace{0.5cm}       1. Palavras. 2. Chave. I. Orientador.  II. Universidade do 
%                        Estado de Santa Catarina.  Programa de Pós-Graduação em XXX. III.
%                       Título.                      \\
%   &       \\%                          
%                     &                                                             \hfill                                                CDD XXX.X –  XX. ed. \\%
%\hline%
%\end{tabularx}%
%\end{small}%
%\pagebreak}%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE APROVACAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{pdfpages}% para a folha de aprovacao assinada e escaneada

% width of the line and text under the line
\newlength{\signwidth}
\setlength{\signwidth}{8cm}

\newlength{\signwidthmembros}
\setlength{\signwidthmembros}{5cm}


\newlength{\signwidthmembrosAquatro}
\setlength{\signwidthmembrosAquatro}{6.9cm}

% thickness of the line
\newlength{\signthickness}
\setlength{\signthickness}{0.4pt}

\newcommand{\orient}{Orientador: }
\newcommand{\coorient}{Co-orientador: }
\newcommand{\membro}{Membro: }








\newcommand{\assinaturaor}{\signor}

\newcommand{\signor}[1]{%
\vfill
\begin{minipage}{3cm}
	\noindent
  	\orient \vspace{\pontos}
\end{minipage}\begin{minipage}{\signwidth}
  	\vspace{1cm} \centering
  	\rule{\signwidth}{\signthickness}\\%
  	\nopagebreak #1\par  
\end{minipage}%
}
 
  
\newcommand{\assinaturacoor}{\signcoor}

\newcommand{\signcoor}[1]{%
\vfill%
\begin{minipage}{3cm}%
  	\coorient \vspace{\pontos}
\end{minipage}\begin{minipage}{\signwidth}%
  	\vspace{1cm} \centering%
  	\rule{\signwidth}{\signthickness}\\%
  	\nopagebreak #1\par%
\end{minipage}%
}
  
 % \newcommand{\csigncoor}[1]%
  %{\begingroup\par\signcoor{\centering #1}\par\endgroup}
  
  
\newcommand{\assinaturamembrotipoum}{\signmembrotipoum}

\newcommand{\signmembrotipoum}[1]{
	\vfill
	\begin{minipage}{3cm}%
  		\membro \vspace{\pontos}
	\end{minipage}\begin{minipage}{\signwidth}
		\vspace{1cm} \centering
		\rule{\signwidth}{\signthickness}\\%
		\nopagebreak #1  
	\end{minipage}
}


\newcommand{\assinaturamembrotipodois}{\signmembrotipodois}

\newcommand{\signmembrotipodois}[1]{
	\vfill
	\begin{minipage}{\signwidthmembros}
		\vspace{1.5cm} \centering
		\rule{\signwidthmembros}{\signthickness}\\%
		\nopagebreak #1  
	\end{minipage}
}


\newcommand{\assinaturamembrotipodoisAquatro}{\signmembrotipodoisAquatro}

\newcommand{\signmembrotipodoisAquatro}[1]{
	\vfill
	\begin{minipage}{\signwidthmembrosAquatro}
		\vspace{2.2cm} \centering
		\rule{\signwidthmembrosAquatro}{\signthickness}\\%
		\nopagebreak #1 \par
	\end{minipage}
}


  
\providecommand{\datadata}{}
\newcommand{\data}[1]{\renewcommand{\datadata}{#1}}
\newcommand{\dataformat}{}
  
  
 \renewcommand{\local}[1]{\renewcommand{\localdata}{#1}}
\renewcommand{\localformat}{}  
  
  
  
 
\newenvironment{folhadeaprovacao}%
 {%
%	\ifthenelse{\isodd{\value{page}}}
%   	{}
%   	{\thispagestyle{empty} \ \pagebreak \ }
   	
   	\thispagestyle{empty}
   	
   	\setlength\parindent{0cm}
   	
  	\begin{center}
    	\autorformat\autordata\par
    	\vspace{1cm}
		\tituloformat\titulodata\subtituloformat\subtitulodata\par
	\end{center}
	
}%
{


\begin{center}
\vfill
      {\localformat\localdata,} {\dataformat\datadata.}
\end{center}
\pagebreak
\cleardoublepage
\setlength\parindent{1.25cm}
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\agradecimentoname}{Agradecimentos}

\newenvironment{agradecimento}%
{%
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty} \ \pagebreak \ }
   	
   	\thispagestyle{empty}
   	
\begin{center}
\bfseries\MakeUppercase{\agradecimentoname}
\end{center}

\normalfont

}%
{

\vfill

\pagebreak

\clearpage

}%abstract
 
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dedicatória %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\makeatletter
\newenvironment{dedicatoria}
{
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\ \vfill \thispagestyle{empty} \cleardoublepage}
   	
	\thispagestyle{empty}

\centering

\
\vfill
\begin{flushright}

\begin{minipage}{0.5 \textwidth}
\it

}
{
\end{minipage}
\end{flushright}
\vfill
%	\vspace{8cm}\endlist\pagebreak
\clearpage
\pagebreak
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Epígrafo %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\providecommand{\autorepigrafodata}{}
\newcommand{\autorepigrafo}[1]{\renewcommand{\autorepigrafodata}{ {#1} } }
%\newcommand{\instituicaoformat}{\normalfont\bfseries}


\makeatletter
\newenvironment{epigrafo}
{
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\vfill\thispagestyle{empty}\cleardoublepage}
\thispagestyle{empty}
\centering
\
\vfill
\vfill
\begin{flushright}


\begin{minipage}{0.5 \textwidth}



\it

}
{
\begin{flushright}
\vspace{10pt}  \hfill \normalfont  \autorepigrafodata\\

\end{flushright}
\end{minipage}
\end{flushright}
\vfill
%	\vspace{8cm}\endlist\pagebreak
\clearpage
}
\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Citação direta com mais que 3 linhas %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\citacaodireta}[1]{\noindent \hspace*{4cm}\begin{minipage}{\textwidth - 4 cm} \small  {#1}%
\end{minipage}
}






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abstract %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newenvironment{udescabstract}%
{%
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty}\cleardoublepage}
   	\thispagestyle{empty}
   	
   		\setlength{\parskip}{15pt}
\begin{center}
   \textbf{\MakeUppercase{Abstract}}
   \vspace{10pt}
\end{center}
	\setlength{\parskip}{10pt}
		\setlength{\parindent}{0pt}

}%
{
\vfill\pagebreak}
  
  
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resumo %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\resumoname}{Resumo}
\newenvironment{resumo}%
{%
	
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty}\cleardoublepage}
	\thispagestyle{empty}
	
	\setlength{\parskip}{15pt}
\begin{center}
   \textbf{\MakeUppercase{\resumoname}}
   \vspace{10pt}
\end{center}
	\setlength{\parskip}{10pt}
	\setlength\parindent{0cm}

}%
{
\vfill\pagebreak
}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bibliografia %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
\RequirePackage[nottoc,notlot,notlof]{tocbibind}


\addto\captionsbrazil{\renewcommand{\bibname}{Referências}}

\let\oldbibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
\oldbibliography{#1}%
\setlength{\itemsep}{0pt}%
}

%\newfloatlist{diagram}{dia}{List of Diagrams}{Diagram}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APÊNDICE %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\apendice}
{
	\newpage
	\renewcommand{\chaptername}{Apêndice}
	\addto\captionsbrazil{\renewcommand{\chaptername}{Apêndice}}
  	\setcounter{chapter}{0}
	\renewcommand{\thechapter}{\Alph{chapter}}
	\renewcommand{\chapternumwidth}{20ex}
	\renewcommand{\chaptersep}{\ -- \ }
	\addcontentsline{toc}{chapter}{Apêndices}
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ANEXO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\anexo}
{
	\newpage
	\renewcommand{\chaptername}{Anexo}
	\addto\captionsbrazil{\renewcommand{\chaptername}{Anexo}}
	
	\addcontentsline{toc}{chapter}{Anexos}
	\setcounter{chapter}{0}
	\renewcommand*{\thechapter}{\Alph{chapter}}
	\renewcommand{\chapternumwidth}{15ex}
	\renewcommand{\chaptersep}{\ -- \ }
}

