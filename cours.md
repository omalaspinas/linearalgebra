---
author:
- Niklaus Eggenberg \& Orestis Malaspinas
title: MATH1 pour Technologies de l'Information
autoSectionLabels: true
autoEqnLabels: true
eqnPrefix: 
  - "éq."
  - "éqs."
chapters: true
numberSections: true
chaptersDepth: 1
sectionsDepth: 3
lang: fr
documentclass: book
papersize: A4
cref: false
urlcolor: blue
---

# Rappel sur les espaces vectoriels 

## Les vecteurs

Si nous nous plaçons sur une carte à un endroit donné (appelé l'origine) et que nous prenons notre notre voiture pour nous déplacer, notre destination ne peut être uniquement décrite si nous ne connaissons que la distance parcourue (voir par exemple la carte @fig:depl_vec). En d'autres termes pour notre carte, nous savons que nous irons à la campagne, mais pas si nous allons à Lausanne ou dans le Jura). Un déplacement n'est donc pas uniquement déterminé par le point d'origine et un scalaire. Il est nécessaire d'avoir une information supplémentaire. Dans le cas de la @fig:depl_vec le déplacement est décrit uniquement par la flèche, ou *vecteur*, qui a une longueur (la distance parcourue) et une direction (la direction de la flèche). 

![L'ensemble des destinations possibles si nous n'avions que le point de départ et la distance parcourue comme information (cercle noir), la position finale avec la distance et la direction de déplacement (Lausanne).](figs/deplacement_vecteur.pdf){#fig:depl_vec width=50%}

D'un point de vue mathématique un vecteur en deux dimensions, $\vec{v}$, est noté comme un couple de nombres
$$\vec{v}=\begin{pmatrix}v_1 \\ v_2 \end{pmatrix},$$
avec $v_1,v_2\in\real$. Il représente la *flèche* allant de l'origine (le point $(0,0)$) au point $(v_1,v_2)$ (voir @fig:composantes).

![Le vecteur $\vec{v}$ relie le point $(0,0)$ au point $(v_1,v_2)$.](figs/composantes.pdf){#fig:composantes width=50%}

Les composantes du vecteur $\vec{v}$ dépendent du système de coordonnées dans lequel il est représenté. De façon plus générale il dépend de la *base* dans laquelle il est exprimé. Dans la @fig:composantes nous utilisons les coordonnées cartésiennes, mais cela n'est pas du tout le seul moyen de représenter un vecteur (voir la @fig:base)

![Le vecteur $\vec{v}$ représente toujours la même flèche. Dans le cas des coordonnées cartésiennes (en noir) ses composantes sont $v_1$ et $v_2$. Par contre ses composantes sont $v_1'$ et $v_2'$ dans les coordonnées "vertes".](figs/composantes_bases.pdf){#fig:base width=50%}

Peu importe la base que nous utilisons, un vecteur dans le plan à deux dimensions se représentera par deux nombres. On notera que $\vec{v}\in\real\times\real=\real^2$, soit "un $\real$ par dimension".

Le concept de vecteur peut donc se généraliser pour plus de dimensions. Une vecteur dans un espace qui a $n$ dimensions, $\vec{v}\in\real^n$, s'écrira
$$\vec{v}=\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix},$$
avec $v_i\in\real,\ \forall i$. 

Remarque # 

Ici un vecteur se représenter comme une liste de taille finie de nombres et la dimension du monde dans lequel vit se vecteur est la taille de la liste. Un vecteur de façon plus générale peut vivre dans un monde de dimension quelconque, y compris infinie.

## L'addition de vecteurs

Comme pour les scalaires, nous voulons pouvoir additionner les vecteurs. Revenons donc aux vecteurs à deux dimensions. Une façon raisonnable de définir l'addition de deux vecteurs est de les mettre "bout à bout" (voir la @fig:addition). 

![La somme de deux vecteurs $\vec{u}$ et $\vec{v}$ donne le vecteur $\vec{w}$. Elle est obtenue en mettant bout à bout le vecteur $\vec{u}$ et $\vec{v}$.](figs/somme_composantes.pdf){#fig:addition width=50%}

Cette façon de faire est en fait assez intuitive pour construire la somme de deux vecteurs. Nous pouvons écrire que si le vecteur $\vec{w}\in\real^2$ est la somme de $\vec{u}\in\real^2$ et $\vec{v}\in\real^2$, on peut écrire
$$\begin{aligned}
\vec{w}&=\vec{u}+\vec{v},\\
\begin{pmatrix}w_1 \\ w_2 \end{pmatrix}&=\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}+\begin{pmatrix}v_1 \\ v_2 \end{pmatrix},\\
\begin{pmatrix}w_1 \\ w_2 \end{pmatrix}&=\begin{pmatrix}u_1+v_1 \\ u_2+v_2 \end{pmatrix}.
\end{aligned}$$
En fait il suffit de sommer chacune des composantes du vecteur et on aura donc 
$$\begin{aligned}
w_1&=u_1+v_1,\\
w_2&=u_2+v_2.
\end{aligned}$$
Cette définition de la somme se généralise très facilement à $n$ dimensions. On a que 
$$
\begin{pmatrix}w_1 \\ \vdots \\ w_n \end{pmatrix}=\begin{pmatrix}u_1 \\ \vdots \\ u_n \end{pmatrix}+\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix}=\begin{pmatrix}u_1+v_1 \\ \vdots \\ u_n+v_n \end{pmatrix}.$$

Remarque # 

Il est important de noter que les dimensions de $\vec{u}$ et $\vec{v}$ doivent être les mêmes. Sinon la somme n'est pas définie. L'opération somme en $n$ dimension prend donc deux vecteurs de dimension $n$ et rend un vecteur de dimension $n$ également.

## Multiplication entre un vecteur et un scalaire

Soit un scalaire $\lambda\in\real$, nous voulons à présent définir l'opération "multiplier par un scalaire" sur un vecteur. L'interprétation que nous voulons faire de cette opération est une "dilatation": le vecteur multiplié verra sa longueur changer mais pas sa direction générale (voir la @fig:multiplication). 

