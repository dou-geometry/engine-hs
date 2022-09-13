%%% Compile Command
% ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape" Op.lhs
% or by chain
% uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape Set.lhs

\documentclass[11pt,a4paper,dvipdfmx]{ujreport}
\usepackage[margin=24mm]{geometry}
\usepackage{preamble-jp-report}

\author{}
\title{Dou-Geomtry's Math Engine - README}
\和暦

\begin{document}

\maketitle
\begin{abstract}
\begin{code}
{-# OPTIONS_GHC -Werror=incomplete-patterns
                -Werror=missing-methods
                -Werror=overlapping-patterns #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE StandaloneDeriving #-}
module Main where
main = undefined
\end{code}
\end{abstract}
\tableofcontents
\newpage

\section*{Introduction}
\addcontentsline{toc}{section}{Introduction}


\chapter{Axiom}


\newpage
\appendix

\chapter{Appendix}

\chapter{Licensing}

\verbatiminput{LICENSE.txt}


\end{document}
