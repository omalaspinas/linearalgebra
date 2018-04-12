---
# author:
# - Orestis Malaspinas
title: Exercices sur les déterminants
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
\newcommand{\mat}[1]{{\underline{\underline{#1}}}}
\newcommand{\mattwo}[4]{\begin{pmatrix}
								#1 & #2 \\
								#3 & #4
						\end{pmatrix}}

Série d'exercices {#det .unnumbered}
=================

Exercice (Déterminants) #

Calculer les déterminants des matrices suivantes et déterminer si elles sont inversibles :

1. 
\begin{equation}
\mat{A}=\mattwo{1}{2}{-2}{3},
\end{equation}
et de sa transposée
\begin{equation}
\mat{A}^\mathrm{T}=\mattwo{1}{-2}{2}{3}.
\end{equation}

2. 
\begin{equation}
\mat{B}=\begin{pmatrix}
	-1 &  1 & 4\\
	 2 & -2 & 3\\
	 0 & -2 & -1\\
\end{pmatrix},
\end{equation}
et de sa transposée
\begin{equation}
\mat{B}^\mathrm{T}=\begin{pmatrix}
	-1 &  2 & 0\\
	 1 & -2 &-2\\
	 4 & 3 & -1\\
\end{pmatrix}.
\end{equation}

3. 
\begin{equation}
\mat{C}=\begin{pmatrix}
	 0 &  1 & 4\\
	 0 & -2 & 3\\
	 0 & -2 & -1\\
\end{pmatrix},
\end{equation}
et de sa transposée
\begin{equation}
\mat{C}^\mathrm{T}=\begin{pmatrix}
	 0 &  0 & 0\\
	 1 & -2 &-2\\
	 4 & 3 & -1\\
\end{pmatrix}.
\end{equation}

4. Arrivez-vous à deviner quelle est la relation entre $\det{\mat{A}}$ et $\det{\mat{A}^\mathrm{T}}$

Exercice (Pseudo-code) #

Écrire en pseudo-code le calcul du déterminant d'une matrice $n\times n$ (ça vous sera utile pour le TP).

