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
\newcommand{\mat}[1]{{\underline{\underline{#1}}}}

Série d'exercices {#matrices .unnumbered}
=================

Exercice #

Montrer que le produit matrice-vecteur entre 
une matrice $\mat{M}\in M_{2,2}(\real)$ et un vecteur $\vec v\in \real^2$
peut s'écrire
\begin{equation}
\vec u=\mat{M}\cdot\vec v=v_1\vec m_1 +v_2\vec m_2 ,
\end{equation}
où $\vec m_1$ et $\vec m_2$ sont la première et la deuxième colonne de la matrice $\mat{M}$ respectivement, et $\vec v=\vectwo{v_1}{v_2}$.

De façon similaire, montrer que si $\mat{N}\in M_{2,4}(\real)$ et $\vec w\in\real^4$, on peut écrire le produit $\mat{N}\cdot \vec w$ comme
\begin{equation}
\mat{N}\cdot\vec w=w_1\vec n_1 +w_2\vec n_2 +w_3\vec n_3 +w_4\vec n_4 .
\end{equation}

Généraliser ces deux résultats pour $\mat{A}\in M_{m,n}(\real)$ et $\vec b\in \real^n$.

Exercice #

Soit l'application linéiare $f$ suivante 
\begin{align}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1+x_2}{x_1-x_2},
\end{align}

1. Déterminer $\mat{F}$, la matrice correspondant à cette application linéaire.
2. Calculer l'image de $\real^2$ par $f$ $\Im_{\real^2}(f)$.
3. Calculer la préimage des vecteurs $\vec e_1=\vectwo{1}{0}$, $\vec e_2=\vectwo{0}{1}$, et $\vec 0=\vectwo{0}{0}$.
4. Soit un vecteur $\vec y=\vectwo{y_1}{y_2}$ tel que
\begin{equation}
\mat{F}\cdot \vec x=\vec y.
\end{equation}
Déterminer $\vec x=\vectwo{x_1}{x_2}$ en fonction de $\vec y$. 
5. Ecrire l'application linéaire $g$ correspondante.
6. Déterminer la matrice de l'application linéaire $\mat{G}$.
7. Que donne le produit $\mat{G}\cdot\mat{F}$?





