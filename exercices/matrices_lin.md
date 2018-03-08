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

Série d'exercices {#vecteur .unnumbered}
=================

Exercice #

Montrer que le produit matrice-vecteur, $\cdot$,
\begin{align}
&M: \real^2\rightarrow \real^2,\\
&M: \vec v\rightarrow \mat{M}\cdot \vec v,
\end{align}
où $\mat{M}\in M_{2,2}(\real)$, est une application linéaire.


Exercice #

Écrire les transformation linéaire suivantes sous la forme d'un produit matrice-vecteur.

1. 
$$ 
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1}{x_2}.
\end{aligned}
$$

2. 
$$ 
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{x_1}.
\end{aligned}
$$

3. 
$$ 
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1+2\cdot x_2}{x_1-x_2}.
\end{aligned}
$$

Exercice (Bonus) #

La transposée d'une matrice, $\mat{M}\in M_{m,n}(\real)$, est notée $\mat{M}^\mathrm{T}\in M_{n,m}(\real)$, est définie comme
\begin{equation}
\{\mat{M}^\mathrm{T}\}_{ij}=\{\mat{M}\}_{ji}.
\end{equation}

Dans le cas d'une matrice $\mat{M}\in M_{2,2}(\real)$, et $\vec v\in M_{2,1}(\real)$ (c'est la même chose qu'un vecteur dans $\real^2$) montrer
que 
\begin{equation}
\left(\mat{M}\cdot\vec v\right)^\mathrm{T}=\vec v^\mathrm{T}\cdot \mat{M}^\mathrm{T}.
\end{equation}

