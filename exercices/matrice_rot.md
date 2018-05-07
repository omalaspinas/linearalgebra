---
# author:
# - Orestis Malaspinas
title: Exercices sur les matrices
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

Série d'exercices {#rotations .unnumbered}
=================

Exercice (Rotation 2D) #

![Rotation des vecteurs $\vec e_1$ et $\vec e_2$ d'un angle $\theta$.](../figs/rot_ex.pdf){#fig:rot width=40%}

1. Déterminer l'image de $\vec e_1$ par l'application, $R_\theta$, qui tourne le vecteur $\vec e_1$ d'un angle $\theta$ dans le sens inverse des aiguilles d'une montre (voir la @fig:rot).
2. Déterminer l'image de $\vec e_2$ par l'application, $R_\theta$, qui tourne le vecteur $\vec e_1$ d'un angle $\theta$ dans le sens inverse des aiguilles d'une montre (voir la @fig:rot).
3. Quelle est la matrice de l'application linéaire $R_\theta$?

Exercice (Rotation 3D) #

Imaginons maintenant que le monde soit en 3 dimensions.

1. En utilisant la même méthode que ci-dessus, calculer la matrice de rotation d'un angle $\theta$ autour de l'axe $z$.

**Indication**: Faites un dessin! On cherche à calculer l'application linéaire qui tournerait $\vec e_1$, $\vec e_2$, et $\vec e_3$ d'un angle $\theta$, avec
$$
\vec e_1=\vecthree{1}{0}{0},\quad \vec e_2=\vecthree{0}{1}{0},\quad \vec e_3=\vecthree{0}{0}{1},
$$
autour de l'axe $z$ (l'axe vertical). Réfléchissez à ce qui se passe avec $\vec e_3$.

2. Même question avec une rotation de $\theta$ autour de l'axe $x$ uniquement.
3. Même question avec une rotation de $\theta$ autour de l'axe $y$ uniquement.
