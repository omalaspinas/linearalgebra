---
# author:
# - Orestis Malaspinas
title: Exercices sur les matrices inverses
autoSectionLabels: true
autoEqnLabels: false
eqnPrefix: 
  - "éq."
  - "éqs."
chapters: true
numberSections: true
chaptersDepth: 1
sectionsDepth: 3
lang: fr
documentclass: article
papersize: A4
cref: false
pandoc-numbering:
  - category: exercice
urlcolor: blue
---
\newcommand{\real}{\mathbb{R}}
\newcommand{\vectwo}[2]{\begin{pmatrix}#1 \\ #2 \end{pmatrix}}
\newcommand{\vecthree}[3]{\begin{pmatrix}#1 \\ #2 \\ #3 \end{pmatrix}}
\newcommand{\mat}[1]{\underline{\underline{#1}}}
\newcommand{\mattwo}[4]{\begin{pmatrix}
								#1 & #2 \\
								#3 & #4
						\end{pmatrix}}

Série d'exercices {#rotations .unnumbered}
=================

Exercice (Matrices inverses) #

Calculer les matrices inverses des matrices suivantes (si possible) :

1. 
\begin{equation}
\mat{A}=\mattwo{1}{2}{-2}{3}.
\end{equation}

2. 
\begin{equation}
\mat{A}^\mathrm{T}=\mattwo{1}{-2}{2}{3}.
\end{equation}
Pouvez-vous deviner la relation entre $\mat{A}^{-1}$ et $\left(\mat{A}^\mathrm{T}\right)^{-1}$

3. 
\begin{equation}
\mat{B}=\mattwo{1}{2}{2}{4}.
\end{equation}

4. 
\begin{equation}
\mat{C}=\begin{pmatrix}
	-1 &  1 & 4\\
	 2 & -2 & 3\\
	 0 & -2 & -1\\
\end{pmatrix}
\end{equation}

5. 
\begin{equation}
\mat{D}=\begin{pmatrix}
	-1 &  1 & 4\\
	 0 & -4 & -1\\
	-1 &  1 & 4\\
\end{pmatrix}
\end{equation}

6. 
\begin{equation}
\mat{R}=\begin{pmatrix}
	\cos(\theta)  & -\sin(\theta) \\
	\sin(\theta) & \cos(\theta) \\
\end{pmatrix}
\end{equation}
