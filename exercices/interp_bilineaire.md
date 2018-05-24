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

Exercice (Interpolation bilinéaire, l'empire contre-attaque) #

Nous connaissons la valeur d'une fonction, $f$, sur $4$ points formant un carré, $P_1=(x_1,y_1)$, $P_2=(x_1,y_2)$, $P_3=(x_2,y_1)$, et $P_4=(x_2,y_2)$
\begin{align}
f(x_1,y_1)&=f_{11},\\
f(x_1,y_2)&=f_{12},\\
f(x_2,y_1)&=f_{21},\\
f(x_2,y_2)&=f_{22}.
\end{align}
Le but de l'interpolation bilinéaire est de déterminer une fonction polynomiale $p(x,y)$ qui passe par les points $\{P_i\}$ et qui sera définie sur n'importe quel point $(x,y)$ dans le rectangle défini par $P_1$, $P_2$, $P_3$, et $P_4$ (voir la @fig:interp). 

![On cherche à connaître la valeur du pixel au point $(x,y)$ (carré bleu) quand les valeurs $f(x_1,y_1)$, $f(x_2,y_1)$, $f(x_1,y_2)$, et $f(x_2,y_2)$ sont connues.](../figs/interp.png){#fig:interp width=40%}

Nous supposons que la fonction $p$ a la forme suivante
$$
p(x,y)=a_0+a_1\cdot x+a_1\cdot y+a_3\cdot x\cdot y,
$$
où $\{a_i\}_{i=0}^3$ sont des coefficients inconnus que nous souhaiterions déterminer.

1. Quelles conditions mathématiques la fonction $p(x,y)$  doit satisfaire?
2. À l'aide de la question $1$, écrire un système linéaire de $4$ équations à $4$ inconnues permettant de déterminer les coefficients $a_i$. 
3. Écrire le système sous la forme d'un produit matrice-vecteur.
4. En posant $x_1=y_1=0$ et $x_2=y_2=0$ résoudre le système d'équations linéaires. 
5. Résoudre le cas général du système d'équations linéaires ($x_1$, $x_2$, $y_1$, et $y_2$ sont quelconques).
