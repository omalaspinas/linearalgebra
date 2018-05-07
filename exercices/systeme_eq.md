---
# author:
# - Orestis Malaspinas
title: Exercices sur les systèmes d'équations
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

Série d'exercices {#det .unnumbered}
=================

Exercice (Deux équations à deux inconnues) #

Soit le système de deux équations à deux inconnues
\begin{align}
a\cdot x_1 + b\cdot x_2 &= y_1,\\
c\cdot x_1 + d\cdot x_2 &= y_2,
\end{align}
avec $x_1$, $x_2$ les deux inconnues.

1. Déterminer $x_1$, et $x_2$ en supposant que $y_1$, $y_2$, $a$, $b$, $c$, et $d$ sont connus.
2. Quelle est la condition pour que ce système d'équation ait une solution?
3. Écrire le système d'équation sous la forme 
\begin{equation}
\mat{A}\cdot \vec x=\vec y,
\end{equation}
avec $\vec x=\vectwo{x_1}{x_2}$, $\vec y=\vectwo{y_1}{y_2}$.
4. A l'aide de la formulation matricielle résoudre le système d'équations.

Exercice (Matrices triangulaires) #

Soit le système d'équations
\begin{align}
u_{11}\cdot x_1 + u_{12}\cdot x_2 &= y_1,\\
u_{22}\cdot x_2 &= y_2.
\end{align}
La résolution de ce système est assez aisée.

1. Écrire ce système sous la forme $\mat{U}\cdot \vec x=\vec y$. 

Nous disons que la matrice $\mat{U}$ est une matrice triangulaire supérieure (upper triangular matrix en bon français), c'est-à-dire
que tous les éléments sous sa diagonale sont nuls. A l'inverse la matrice triangulaire inférieure (lower triangular matrix) $\mat{L}$
a tous les éléments au dessus de sa diagonale de sont nuls.

2. Généraliser la résolution de ce genre de système à $n$ équations, à $n$ inconnues
Soit le système d'équations
\begin{align}
u_{11}\cdot x_1 + u_{12}\cdot x_2 +...+u_{1n}\cdot x_n&= y_1,\\
u_{22}\cdot x_2 +...+u_{2n}\cdot x_n&= y_2,\\
&\vdots,\\
u_{nn}\cdot x_n &= y_n.
\end{align}






