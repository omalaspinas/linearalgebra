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

![L'ensemble des destinations possibles si nous n'avions que le point de départ et la distance parcourue comme information (cercle noir), la position finale avec la distance et la direction de déplacement (Lausanne).](figs/deplacement_vecteur.pdf){#fig:depl_vec width=30%}

D'un point de vue mathématique un vecteur en deux dimensions, $\vec{v}$, est noté comme un couple de nombres
$$\vec{v}=\begin{pmatrix}v_1 \\ v_2 \end{pmatrix},$$
avec $v_1,v_2\in\real$. Il représente la *flèche* allant de l'origine (le point $(0,0)$) au point $(v_1,v_2)$ (voir @fig:composantes).

![Le vecteur $\vec{v}$ relie le point $(0,0)$ au point $(v_1,v_2)$.](figs/composantes.pdf){#fig:composantes width=30%}

Grâce au théorème de Pythagore (ce Grec mort depuis longtemps) nous pouvons aisément calculer la longueur du vecteur $\vec{v}$, notée $||\vec{v}||$ et également appelée norme
$$||\vec{v}||=\sqrt{v_1^2+v_2^2}.$$
Et donc on peut également définir le vecteur unitaire, $\hat{v}$, qui est un vecteur qui a la direction de $\vec{c}$, mais qui est de longueur 1
$$\hat{v}=\frac{\vec{v}}{||\vec{v}||}.$$

Les composantes du vecteur $\vec{v}$ dépendent du système de coordonnées dans lequel il est représenté. De façon plus générale il dépend de la *base* dans laquelle il est exprimé. Dans la @fig:composantes nous utilisons les coordonnées cartésiennes, mais cela n'est pas du tout le seul moyen de représenter un vecteur (voir la @fig:base)

![Le vecteur $\vec{v}$ représente toujours la même flèche. Dans le cas des coordonnées cartésiennes (en noir) ses composantes sont $v_1$ et $v_2$. Par contre ses composantes sont $v_1'$ et $v_2'$ dans les coordonnées "vertes".](figs/composantes_bases.pdf){#fig:base width=30%}

Peu importe la base que nous utilisons, un vecteur dans le plan à deux dimensions se représentera par deux nombres. On notera que $\vec{v}\in\real\times\real=\real^2$, soit "un $\real$ par dimension".

Le concept de vecteur peut donc se généraliser pour plus de dimensions. Une vecteur dans un espace qui a $n$ dimensions, $\vec{v}\in\real^n$, s'écrira
$$\vec{v}=\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix},$$
avec $v_i\in\real,\ \forall i$. 

Remarque # 

Ici un vecteur se représenter comme une liste de taille finie de nombres et la dimension du monde dans lequel vit se vecteur est la taille de la liste. Un vecteur de façon plus générale peut vivre dans un monde de dimension quelconque, y compris infinie.

Remarque #

Ici nous n'avons considéré que des vecteurs vivant dans $\real^n$. On peut en fait considérer n'importe quel ensemble $D\subseteq \real$ et construire des vecteur de dimension $n$ vivant dans $D^n$.

Exemple #

Un octet (une séquence de huit bits, comme son nom l'indique) constitue un vecteur qui vit dans $\{0,1\}^8$.

## L'addition de vecteurs

Comme pour les scalaires, nous voulons pouvoir additionner les vecteurs. Revenons donc aux vecteurs à deux dimensions. Une façon raisonnable de définir l'addition de deux vecteurs est de les mettre "bout à bout" (voir la @fig:addition). 

![La somme de deux vecteurs $\vec{u}$ et $\vec{v}$ donne le vecteur $\vec{w}$. Elle est obtenue en mettant bout à bout le vecteur $\vec{u}$ et $\vec{v}$.](figs/somme_composantes.pdf){#fig:addition width=30%}

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
\begin{pmatrix}w_1 \\ \vdots \\ w_n \end{pmatrix}=\begin{pmatrix}u_1 \\ \vdots <\\ u_n \end{pmatrix}+\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix}=\begin{pmatrix}u_1+v_1 \\ \vdots \\ u_n+v_n \end{pmatrix}.$$

Remarque # 

Il est important de noter que les dimensions de $\vec{u}$ et $\vec{v}$ doivent être les mêmes. Sinon la somme n'est pas définie. L'opération somme en $n$ dimension prend donc deux vecteurs de dimension $n$ et rend un vecteur de dimension $n$ également.

Exemple #

Pour en revenir à l'exemple des octets, il est un peu plus compliqué de définir la somme. En effet, la somme entre des bits peut avoir différentes définitions. Une possibilité est de définir la somme comme le XOR, $\oplus$. 

Pour "sommer" deux octets, $\vec{u},\ \vec{v}\in\{0,1\}^8$ on peut donc définir la somme comme 
$$\vec{u}\oplus\vec{v}=\begin{pmatrix}u_1\oplus v_1 \\ \vdots \\ u_8\oplus v_8 \end{pmatrix}.$$

## Multiplication entre un vecteur et un scalaire

Soit un scalaire $\lambda\in\real$, nous voulons à présent définir l'opération "multiplier par un scalaire" sur un vecteur. L'interprétation que nous voulons faire de cette opération est une "dilatation": le vecteur multiplié verra sa longueur changer mais pas sa direction générale (voir la @fig:multiplication). 

![Le produit entre un scalaire $\lambda$ et un vecteur $\vec{v}$ est une dilatation du vecteur $\vec{v}$. Le cas où $\lambda$ est négatif change également l'orientation du vecteur.](figs/produit_vecteur.pdf){#fig:multiplication width=30%}

Comme on le constate sur la @fig:multiplication il y a quatre cas de figure

1. $\lambda > 1$ le vecteur s'allonge et garde la même direction et orientation.
2. $0<\lambda<1$ le vecteur raccourcit et garde la même direction et orientation.
3. $0>\lambda>-1$ le vecteur raccourcit et change d'orientation.
4. $\lambda<-1$ le vecteur s'allonge et change d'orientation.

Avec la définition de la norme d'un vecteur $||\vec{v}||$, il est très aisé de voir que la multiplication par un scalaire revient en fait à multiplier chaque composante du vecteur $\vec{v}$ par un scalaire. En définissant $\vec{u}=\lambda\cdot \vec{v}$, cela revient à faire
$$\vec{u}=\lambda\cdot\vec{v}=\begin{pmatrix}\lambda\cdot v_1 \\ \lambda\cdot v_2 \end{pmatrix}=\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}.$$
En d'autres termes $u_1=\lambda\cdot v_1$ et $u_2
La longueur de $||\vec{u}||$ est donnée par
$$||\vec{u}||=\sqrt{u_1^2+u_2^2}=\sqrt{(\lambda\cdot v_1)^2+(\lambda\cdot v_2)^2}=\sqrt{\lambda^2(v_1^2+v_2^2)}=|\lambda|\cdot||\vec{v}||.$$
On voit donc que la longueur de $\vec{v}$ est modifiée d'un facteur $\lambda$: il est dilaté ou contracté. Le signe de $\lambda$ aura uniquement une influence sur l'orientation.

Comme pour la somme la généralisation de la multiplication par un scalaire est triviale. En dimension $n$, pour $\lambda\in\real$ et $\vec{v}\in\real^n$ on a
$$\vec{u}=\lambda\cdot\vec{v}=\begin{pmatrix}\lambda\cdot v_1 \\ \vdots \\ \lambda\cdot v_n \end{pmatrix}.$$

