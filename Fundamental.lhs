%%% Compile Command
% ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape" Op.lhs
% or by chain
% uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape Set.lhs

\documentclass[11pt,a4paper,dvipdfmx]{ujreport}
\usepackage[margin=24mm]{geometry}
\usepackage{preamble-jp-report}

\author{}
\title{Dou-Geomtry's Math Engine - Fundamental}
\和暦

\begin{document}

\maketitle
\begin{abstract}
\begin{code}
{-# OPTIONS_GHC -Werror=incomplete-patterns
                -Werror=missing-methods
                -Werror=overlapping-patterns #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE StandaloneDeriving #-}
module Fundamental where
\end{code}
\end{abstract}
\tableofcontents
\newpage

\begin{comment}
\begin{code}
import qualified Prelude as P
--import Prelude hiding ((>>), (<=), (>=))
import Prelude (($), Float, Show, show, Int, Bool, (.), (==), (/=), (&&), Maybe(..), compare, snd, Eq, Enum, (+), (-), abs, otherwise, flip, print)
import Data.List
\end{code}
\end{comment}

\begin{comment} % Following is not shown in LaTeX doc
\begin{code}
notImplemented = P.error "Function not implemented" -- Comment out this line in production
\end{code}
\begin{code}
unreachable = P.error "Reached a supposed unreachable branch, possibly due to having different `U`"
\end{code}
\end{comment}

\section*{Introduction}
\addcontentsline{toc}{section}{Introduction}


\chapter{Axiom}



\newpage
\appendix

\chapter{Appendix}


\end{document}
