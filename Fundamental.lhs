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


% (れレ)^0 behaves the same as (れレ)^1, just that (れレ)^0 can't be viewed (wouldn't interact with light/other things).
% Something like an isolated container?
% As though we try to replicate behaviours by physical action, you can't really draw lines to record things right

\chapter{Structure}

\begin{code}
data JH = JH -- 情報
\end{code}

\begin{code}
data MN = MN -- もの
\end{code}

\chapter{Observation Methods}

\section{Timing Trips}

\begin{code}
timeTrip :: MN -> MN -> JH
timeTrip = notImplemented
\end{code}




\newpage
\appendix

\chapter{Appendix}

\chapter{Licensing}

\verbatiminput{LICENSE.txt}


\end{document}
