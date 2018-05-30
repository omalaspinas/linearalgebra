---
author:
- Niklaus Eggenberg \& Orestis Malaspinas
title: MATH1 pour Technologies de l'Information
autoSectionLabels: false
autoEqnLabels: true
eqnPrefix:
  - "éq."
  - "éqs."
chapters: true
numberSections: false
chaptersDepth: 1
sectionsDepth: 3
lang: fr
documentclass: book
papersize: A4
cref: false
urlcolor: blue
---
\newcommand{\real}{\mathbb{R}}
\newcommand{\rational}{\mathbb{Q}}
\newcommand{\integer}{\mathbb{Z}}
\renewcommand{\natural}{\mathbb{N}}
\newcommand{\complex}{\mathbb{C}}
\newcommand{\zbar}{\bar{z}}
\newcommand{\dd}{\mathrm{d}}
\newcommand{\perm}{\mathrm{perm}}
\newcommand{\card}{\mathrm{card}}
\newcommand{\fh}{\hat{f}}
\newcommand{\gh}{\hat{g}}
\newcommand{\hh}{\hat{h}}
\renewcommand{\Re}{\mathrm{Re}}
\renewcommand{\Im}{\mathrm{Im}}
\newcommand{\pDeriv}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\pDerivTwo}[2]{\frac{\partial^2 #1}{\partial #2^2}}
\newcommand{\dDeriv}[2]{\frac{\dd #1}{\dd #2}}
\newcommand{\dDerivTwo}[2]{\frac{\dd^2 #1}{\dd #2^2}}
\newcommand{\cm}{\mathrm{cm}}
\newcommand{\km}{\mathrm{km}}
\newcommand{\mm}{\mathrm{mm}}
\newcommand{\cd}{\mathrm{cd}}
\newcommand{\mol}{\mathrm{mol}}
\newcommand{\m}{\mathrm{m}}
\renewcommand{\l}{\mathrm{l}}
\newcommand{\s}{\mathrm{s}}
\newcommand{\kg}{\mathrm{kg}}
\newcommand{\g}{\mathrm{g}}
\newcommand{\K}{\mathrm{K}}
\newcommand{\J}{\mathrm{J}}
\renewcommand{\C}{\mathrm{C}}
\newcommand{\oC}{^\circ\mathrm{C}}
\newcommand{\oK}{^\circ\mathrm{K}}
\newcommand{\A}{\mathrm{A}}
\newcommand{\N}{\mathrm{N}}
\newcommand{\atm}{\mathrm{atm}}
\renewcommand{\bar}{\mathrm{bar}}
\newcommand{\V}{\mathrm{V}}
\newcommand{\W}{\mathrm{W}}
\newcommand{\kW}{\mathrm{kW}}
\newcommand{\dl}{\mathrm{dl}}
\newcommand{\dm}{\mathrm{dm}}
\newcommand{\kcal}{\mathrm{kcal}}
\newcommand{\h}{\mathrm{h}}
\newcommand{\Pa}{\mathrm{Pa}}
\newcommand{\vectwo}[2]{\begin{pmatrix}#1 \\ #2 \end{pmatrix}}
\newcommand{\vecthree}[3]{\begin{pmatrix}#1 \\ #2 \\ #3 \end{pmatrix}}
\newcommand{\mat}[1]{\underline{\underline{#1}}}
\newcommand{\com}[1]{\mat{\mathrm{com}#1}}
\newcommand{\mattwo}[4]{\begin{pmatrix}
                #1 & #2 \\
                #3 & #4
            \end{pmatrix}}

# Rappel sur les espaces vectoriels

## Les vecteurs

Si nous nous plaçons sur une carte à un endroit donné (appelé l'origine) et que nous prenons notre voiture pour nous déplacer, notre destination ne peut être uniquement décrite si nous ne connaissons que la distance parcourue (voir par exemple la carte @fig:depl_vec). En d'autres termes pour notre carte, nous savons que nous irons à la campagne, mais pas si nous allons à Lausanne ou dans le Jura. Un déplacement n'est donc pas uniquement déterminé par le point d'origine et un scalaire. Il est nécessaire d'avoir une information supplémentaire. Dans le cas de la @fig:depl_vec le déplacement est décrit uniquement par la flèche, ou *vecteur*, qui a une longueur (la distance parcourue) et une direction (la direction de la flèche).

![L'ensemble des destinations possibles si nous n'avions que le point de départ et la distance parcourue comme information (cercle noir), la position finale avec la distance et la direction de déplacement (Lausanne).](figs/deplacement_vecteur.png){#fig:depl_vec width=30%}

D'un point de vue mathématique un vecteur en deux dimensions, $\vec{v}$, est noté comme un couple de nombres
$$\vec{v}=\begin{pmatrix}v_1 \\ v_2 \end{pmatrix},$$
avec $v_1,v_2\in\real$. Il représente la *flèche* allant de l'origine (le point $(0,0)$) au point $(v_1,v_2)$ (voir @fig:composantes).

![Le vecteur $\vec{v}$ relie le point $(0,0)$ au point $(v_1,v_2)$.](figs/composantes.png){#fig:composantes width=30%}

Grâce au théorème de Pythagore (ce Grec mort depuis longtemps) nous pouvons aisément calculer la longueur du vecteur $\vec{v}$, notée $||\vec{v}||$ et également appelée norme
$$||\vec{v}||=\sqrt{v_1^2+v_2^2}.$$
Et donc on peut également définir le vecteur unitaire, $\hat{v}$, qui est un vecteur qui a la direction de $\vec{v}$, mais qui est de longueur 1
$$\hat{v}=\frac{\vec{v}}{||\vec{v}||}.$$

Les composantes du vecteur $\vec{v}$ dépendent du système de coordonnées dans lequel il est représenté. De façon plus générale il dépend de la *base* dans laquelle il est exprimé. Dans la @fig:composantes nous utilisons les coordonnées cartésiennes, mais cela n'est pas du tout le seul moyen de représenter un vecteur (voir la @fig:base)

![Le vecteur $\vec{v}$ représente toujours la même flèche. Dans le cas des coordonnées cartésiennes (en noir) ses composantes sont $v_1$ et $v_2$. Par contre ses composantes sont $v_1'$ et $v_2'$ dans les coordonnées "vertes".](figs/composantes_bases.png){#fig:base width=30%}

Peu importe la base que nous utilisons, un vecteur dans le plan à deux dimensions se représentera par deux nombres. On notera que $\vec{v}\in\real\times\real=\real^2$, soit "un $\real$ par dimension".

Le concept de vecteur peut se généraliser pour plus de dimensions. Une vecteur dans un espace qui a $n$ dimensions, $\vec{v}\in\real^n$, s'écrira
$$\vec{v}=\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix},$$
avec $v_i\in\real,\ \forall i$.

---

Remarque +.#

Ici un vecteur se représente comme une liste de taille finie de nombres et la dimension du monde dans lequel vit ce vecteur est la taille de la liste. Un vecteur de façon plus générale peut vivre dans un monde de dimension quelconque, y compris infinie.

---

---

Illustration +.#

Un octet (une séquence de huit bits, comme son nom l'indique) constitue un vecteur qui vit dans $\{0,1\}^8$.

---

## L'addition de vecteurs {#sec:addition_vec}

Comme pour les scalaires, nous voulons pouvoir additionner les vecteurs. Revenons donc aux vecteurs à deux dimensions. Une façon raisonnable de définir l'addition de deux vecteurs est de les mettre "bout à bout" (voir la @fig:addition).

![La somme de deux vecteurs $\vec{u}$ et $\vec{v}$ donne le vecteur $\vec{w}$. Elle est obtenue en mettant bout à bout le vecteur $\vec{u}$ et $\vec{v}$.](figs/somme_composantes.png){#fig:addition width=30%}

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

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> u = [1.0, 2.0, 3.0]
>>> v = [2.0, 3.0, 4.0]
>>> w = [0.0, 0.0, 0.0]
>>> for i in range(3): # loop based syntax for vector addition
...     w[i]=u[i] + v[i]
...
>>> w
[3.0, 5.0, 7.0]
>>> import numpy as np
>>> u_np = np.array([1.0, 2.0, 3.0])
>>> v_np = np.array([2.0, 3.0, 4.0])
>>> w_np = u_np + v_np # numpy syntax for vector addition
>>> w_np
array([3., 5., 7.])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

---

Remarque +.#

Il est important de noter que les dimensions de $\vec{u}$ et $\vec{v}$ doivent être les mêmes. Sinon la somme n'est pas définie. L'opération somme en $n$ dimension prend donc deux vecteurs de dimension $n$ et rend un vecteur de dimension $n$ également.

---
---

Illustration +.#

Pour en revenir à l'exemple des octets, il est un peu plus compliqué de définir la somme. En effet, la somme entre des bits peut avoir différentes définitions. Une possibilité est de définir la somme comme le XOR, $\oplus$.

Pour "sommer" deux octets, $\vec{u},\ \vec{v}\in\{0,1\}^8$ on peut donc définir la somme comme
$$\vec{u}\oplus\vec{v}=\begin{pmatrix}u_1\oplus v_1 \\ \vdots \\ u_8\oplus v_8 \end{pmatrix}.$$

---

## Multiplication entre un vecteur et un scalaire {#sec:multiplication_vec}

Soit un scalaire $\lambda\in\real$, nous voulons à présent définir l'opération "multiplier par un scalaire" sur un vecteur. L'interprétation que nous voulons faire de cette opération est une "dilatation": le vecteur multiplié verra sa longueur changer mais pas sa direction générale (voir la @fig:multiplication).

![Le produit entre un scalaire $\lambda$ et un vecteur $\vec{v}$ est une dilatation du vecteur $\vec{v}$. Le cas où $\lambda$ est négatif change également l'orientation du vecteur.](figs/produit_vecteur.png){#fig:multiplication width=30%}

Comme on le constate sur la @fig:multiplication il y a quatre cas de figure

1. $\lambda > 1$ le vecteur s'allonge et garde la même direction et orientation.
2. $0<\lambda<1$ le vecteur raccourcit et garde la même direction et orientation.
3. $0>\lambda>-1$ le vecteur raccourcit et change d'orientation.
4. $\lambda<-1$ le vecteur s'allonge et change d'orientation.

Avec la définition de la norme d'un vecteur $||\vec{v}||$, il est très aisé de voir que la multiplication par un scalaire revient en fait à multiplier chaque composante du vecteur $\vec{v}$ par un scalaire. En définissant $\vec{u}=\lambda\cdot \vec{v}$, cela revient à faire
$$\vec{u}=\lambda\cdot\vec{v}=\begin{pmatrix}\lambda\cdot v_1 \\ \lambda\cdot v_2 \end{pmatrix}=\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}.$$
En d'autres termes $u_1=\lambda\cdot v_1$ et $u_2=\lambda\cdot v_2$.
La longueur de $||\vec{u}||$ est donnée par
$$||\vec{u}||=\sqrt{u_1^2+u_2^2}=\sqrt{(\lambda\cdot v_1)^2+(\lambda\cdot v_2)^2}=\sqrt{\lambda^2(v_1^2+v_2^2)}=|\lambda|\cdot||\vec{v}||.$$
On voit donc que la longueur de $\vec{v}$ est modifiée d'un facteur $\lambda$: il est dilaté ou contracté. Le signe de $\lambda$ aura uniquement une influence sur l'orientation.

Comme pour la somme la généralisation de la multiplication par un scalaire est triviale. En dimension $n$, pour $\lambda\in\real$ et $\vec{v}\in\real^n$ on a
$$\vec{u}=\lambda\cdot\vec{v}=\begin{pmatrix}\lambda\cdot v_1 \\ \vdots \\ \lambda\cdot v_n \end{pmatrix}.$$

En python, cette opération peut s'écrire à l'air d'une boucle, ou de façon beaucoup plus simple en utilisant la librairie NumPy.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> u = [1.0, 2.0, 3.0]
>>> v = [0.0, 0.0, 0.0]
>>> alpha = 1.5
>>>  for i in range(3): # loop syntax for scalar multiplication
...     v[i] = alpha * u[i]
...
>>> v
[1.5, 3.0, 4.5]
>>> import numpy as np
>>> v_np = np.array([1, 2, 3])
>>> alpha = 1.5
>>> alpha * v_np  # numpy syntax for scalar multiplication
array([1.5, 3. , 4.5])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Les espaces vectoriels

Les vecteurs en deux dimensions à composantes réelles, $\vec{v}\in\real^2$, et les scalaires réels, $\lambda\in\real$, dotés de la somme (@sec:addition_vec) et la multiplication (@sec:multiplication_vec) forme un espace qui a un certain nombre de propriétés.

### Propriétés de la somme

Soient $\vec{u},\vec{v},\vec{w}\in\real^2$ trois vecteurs de $\real^2$.

1. La somme est dite *interne*: la somme de deux vecteurs de $\real^2$ reste dans $\real^2$. Ceci se note de la façon suivante

$$
+:\real^2\times\real^2\rightarrow\real^2.
$$
2. La somme est *commutative*
$$\vec{v}+\vec{u}=\vec{u}+\vec{v},$$
soit en composantes
$$\begin{pmatrix}v_1+u_1 \\ v_2+u_2 \end{pmatrix}=\begin{pmatrix}u_1+v_1 \\ u_2+v_2 \end{pmatrix}.
$$
3. La somme possède un *élément neutre*, noté $\vec{0}$ et définit par
$$\vec{0}=\begin{pmatrix}0 \\ 0 \end{pmatrix}.$$
Lorsqu'on somme l'élément neutre avec un autre vecteur, on ne modifie pas ce vecteur
$$
\vec{v}+\vec{0}=\vec{v},
$$
soit en composantes
$$
\begin{pmatrix}v_1+0 \\ v_2+0 \end{pmatrix}=\begin{pmatrix}v_1 \\ v_2 \end{pmatrix}.
$$
4. La somme est *associative*
$$
(\vec{u}+\vec{v})+\vec{w}=\vec{u}+(\vec{v}+\vec{w}),
$$
soit en composantes
$$
\begin{aligned}
&\left(\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}+\begin{pmatrix}v_1 \\ v_2 \end{pmatrix}\right)+\begin{pmatrix}w_1 \\ w_2 \end{pmatrix}
=\begin{pmatrix}u_1+v_1 \\ u_2+v_2 \end{pmatrix}+\begin{pmatrix}w_1 \\ w_2 \end{pmatrix}
=\begin{pmatrix}u_1+v_1+w_1 \\ u_2+v_2+w_2 \end{pmatrix},\\
&=\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}+\begin{pmatrix}v_1+w_1 \\ v_2+w_2 \end{pmatrix}=\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}+\left(\begin{pmatrix}v_1 \\ v_2 \end{pmatrix}+\begin{pmatrix}w_1 \\ w_2 \end{pmatrix}\right).
\end{aligned}$$
5. Tout élément $\vec{v}$ possède un *opposé* qui est noté $-\vec{v}$. Quand on somme $\vec{v}$ et $-\vec{v}$ on obtient l'élément neutre
$$
\vec{v}+(-\vec{v})=\vec{0},
$$
soit en composantes
$$
\begin{aligned}
\begin{pmatrix}v_1 \\ v_2 \end{pmatrix}+\begin{pmatrix}-v_1 \\ -v_2 \end{pmatrix}=\begin{pmatrix}v_1-v_1 \\ v_2-v_2 \end{pmatrix}= \begin{pmatrix}0 \\ 0 \end{pmatrix}.
\end{aligned}$$

### Propriétés de la multiplication par un scalaire

Soient $\vec{u},\vec{v}\in\real^2$ deux vecteurs de $\real^2$ et $\mu,\lambda\in\real$.

1. La multiplication par un scalaire d'un vecteur est dite *externe*: le produit entre un scalaire et un vecteur de $\real^2$ reste un vecteur de $\real^2$.

$$
\cdot:\real\times\real^2\rightarrow\real^2.
$$
2. La multiplcation est *distributive* par rapport à la somme
$$\lambda\cdot (\vec{u}+\vec{v}) = \lambda\vec{u}+\lambda\vec{v},$$
soit en composantes
$$
\begin{aligned}
&\lambda\cdot \left(\begin{pmatrix}v_1 \\ v_2 \end{pmatrix}+\begin{pmatrix}u_1 \\ u_2 \end{pmatrix}\right)
= \lambda\cdot \begin{pmatrix}v_1+u_1 \\ v_2+u_2\end{pmatrix}
= \begin{pmatrix}\lambda\cdot(v_1+u_1) \\\lambda\cdot(v_2+u_2)\end{pmatrix},\\
&= \begin{pmatrix}\lambda\cdot v_1+\lambda\cdot u_1 \\ \lambda\cdot v_2+\lambda\cdot u_2)\end{pmatrix}
= \begin{pmatrix}\lambda\cdot v_1 \\ \lambda\cdot v_2\end{pmatrix}+ \begin{pmatrix}\lambda\cdot u_1 \\ \lambda\cdot u_2\end{pmatrix},\\
&= \lambda\cdot \begin{pmatrix}v_1 \\ v_2\end{pmatrix}+ \lambda\cdot \begin{pmatrix} u_1 \\  u_2\end{pmatrix}.
\end{aligned}
$$
3. Elle est *distributive* par rapport à la somme de $\real$
$$(\lambda+\mu)\cdot \vec{u} = \lambda\vec{u}+\mu\vec{u},$$
soit en composantes
$$
\begin{aligned}
&(\lambda+\mu)\cdot \begin{pmatrix}u_1 \\ u_2 \end{pmatrix}
= \begin{pmatrix}(\lambda+\mu)\cdot u_1 \\ (\lambda+\mu)\cdot u_2\end{pmatrix}
= \begin{pmatrix}\lambda\cdot u_1+\mu\cdot u_1 \\ \lambda\cdot u_2+\mu\cdot u_2\end{pmatrix},\\
&= \lambda\cdot \begin{pmatrix}u_1 \\ u_2\end{pmatrix}+\mu\cdot\begin{pmatrix} u_1 \\ u_2\end{pmatrix}
\end{aligned}
$$
4. Elle vérifie *l'associativité* par rapport à la multiplication de $\real$
$$(\lambda\cdot\mu)\cdot\vec{u}=\lambda\cdot(\mu\cdot\vec{u}),$$
soit en composantes
$$
\begin{aligned}
&(\lambda\cdot\mu)\cdot \begin{pmatrix}u_1 \\ u_2 \end{pmatrix}
= \begin{pmatrix}(\lambda\cdot\mu)\cdot u_1 \\ (\lambda\cdot\mu)\cdot u_2\end{pmatrix}
= \begin{pmatrix}\lambda\cdot(\mu\cdot u_1) \\ \lambda\cdot(\mu\cdot u_2)\end{pmatrix},\\
&= \lambda\cdot\begin{pmatrix}\mu\cdot u_1 \\ \mu\cdot u_2\end{pmatrix}
= \lambda\cdot\left(\mu\cdot\begin{pmatrix} u_1 \\ u_2\end{pmatrix}\right).
\end{aligned}
$$
5. L'élément neutre de la multiplication de $\real$ est neutre à gauche
$$1\cdot \vec{u}=\vec{u},$$
soit en composantes
$$
1\cdot \begin{pmatrix}u_1 \\ u_2 \end{pmatrix}
= \begin{pmatrix}1\cdot u_1 \\ 1\cdot u_2\end{pmatrix}
= \begin{pmatrix}u_1 \\ u_2\end{pmatrix}.
$$

### Définition générale d'un espace vectoriel

Soit un ensemble $K$ muni d'une "addition" et d'une "multiplication"[^1] (par exemple les nombre réel, $\real$, les rationnels, $\rational$, ...). Les éléments de $K$ sont appelés *scalaires*. Un espace vectoriel sur $K$ est un ensemble $V$, dont les éléments sont appelés vecteurs, qui est muni de deux lois:

1. Une somme, notée $+$, qui est dite interne. C'est-à-dire que la somme de deux vecteurs de $V$ est aussi un vecteur de $V$

$$+: V\times V\rightarrow V.$$
2. La multiplication par un scalaire *à gauche*, qui est dite *externe*. C'est-à-dire que la multiplication à gauche associe à un scalaire dans $K$ et un vecteur dans $V$ un vecteur qui se trouve toujours dans $V$
$$\cdot: K\times V\rightarrow V.$$

Soit $\vec{u},\vec{v},\vec{w}\in V$, la somme possède les propriétés suivantes:

1. Elle est *associative*

$$(\vec{u}+\vec{v})+\vec{w}=\vec{u}+(\vec{v}+\vec{w}).$$
2. Elle est *commutative*
$$\vec{u}+\vec{v}=\vec{v}+\vec{u}.$$
3. Elle admet un *élément neutre*, noté $\vec{0}$ (ou vecteur nul), tel que
$$\vec{u}+\vec{0}=\vec{u}.$$
4. Tout vecteur $\vec{v}$ admet un *opposé*, noté $-\vec{v}$, tel que
$$\vec{v}+(-\vec{v})=\vec{0}.$$

Soit $\lambda,\mu\in K$ et $\vec{u},\vec{v}\in V$, le produit satisfait les propriétés suivantes:

1. Elle est *distributive à gauche* par rapport à la somme de $V$

$$\lambda\cdot (\vec{u}+\vec{v}) = \lambda\vec{u}+\lambda\vec{v}.$$
2. Elle est *distributive à droite* par rapport à la somme de $K$
$$(\lambda+\mu)\cdot \vec{u} = \lambda\vec{u}+\mu\vec{u}.$$
3. Elle vérifie *l'associativité mixte* par rapport à la multiplication de $K$
$$(\lambda\cdot\mu)\cdot\vec{u}=\lambda\cdot(\mu\cdot\vec{u}).$$
4. L'élément neutre de la multiplication de $K$, noté $1$, est neutre à gauche pour "$\cdot$"
$$1\cdot \vec{u}=\vec{u}.$$

Avec cette définition, on voit que les $n$-uplets dotés des opérations d'addition et de multiplication qu'on a vues dans les @sec:addition_vec et @sec:multiplication_vec forme un espace vectoriel.

### Exemples d'espace vectoriel

Il existe un très grand nombre d'espace vectoriel que vous utilisez quotidiennement sans savoir que c'en est un. Nous allons en voir un certain nombre.

1. L'espace des réels est un espace vectoriel sur les réels.
2. L'espace des entiers est un espace vectoriel sur les entiers.
3. L'espace des réels est un espace vectoriel sur les entiers.
4. L'espace $\{0\}$ sur $\real$.
5. L'espace des fonctions définies telles que si

$$f:\real\rightarrow \real,\quad g:\real\rightarrow \real,$$ et $\lambda\in\real$, on a
$$
\begin{aligned}
&(f+g)(x)=f(x)+g(x),\quad\forall x\in \real,\\
&(\alpha\cdot f)(x)=\alpha\cdot f(x),\quad\forall x\in \real.
\end{aligned}
$$

6. L'espace des polynômes sur les réels.

---

Exercice +.#

Montrer que les points 4, 5 et 6 ci-dessus sont bien des espaces vectoriels.

---

### Combinaisons linéaires

Une des raisons pour laquelle nous définissons les espaces vectoriels est la possibilité d'effectuer des combinaisons linéaires dans ces espaces.

Soit un espace vectoriel $E$ sur $K$, muni des opérations "$+$"" et "$\cdot$".
Soient $\vec v_1, \vec v_2, ..., \vec v_n\in E$ et $\lambda_1,...,\lambda_n\in K$, une combinaison linéaire de $\vec v_1,...,\vec v_n$
$$\sum_{i=1}^n\lambda_i\cdot \vec v_i=\lambda_1\cdot \vec v_1+...+\lambda_n\cdot \vec v_n.$$

A l'aide de la définition de l'espace vectoriel, nous savons que le vecteur résultant de n'importe quelle combinaison linéaire de l'ensemble $E$ sera toujours un élément de $E$. Une question intéressante à se poser à présent, c'est de savoir quel est l'ensemble qu'on peut générer en faisant des combinaisons linéaires d'un ensemble de $\{\vec v_i\}_{i=1}^n$ (cet ensemble de vecteurs s'appelle un *famille de vecteurs*).

---

Exercice +.#

1. Considérons deux vecteurs $\vec v_1$, $\vec v_2$ donnés par

$$\vec v_1=\vectwo{1}{2},\quad \vec v_2=\vectwo{2}{1}.$$
Quel est l'espace généré par les combinaisons linéaires de ces deux vecteurs?

2. Considérons deux $\vec v_1$, $\vec v_2$ donnés par
$$\vec v_1=\vectwo{1}{2},\quad \vec v_2=\vectwo{-1}{-2}.$$
Quel est l'espace généré par les combinaisons linéaires de ces deux vecteurs?

3. Considérons le vecteur $\vec v$ donnés par
$$\vec v=\vectwo{0}{0}.$$
Quel est l'espace généré par les combinaisons linéaires de $\vec v$?

4. Considérons trois vecteurs $\vec v_1$, $\vec v_2$, et $\vec v_3$ donnés par
$$\vec v_1=\vectwo{1}{2},\quad \vec v_2=\vectwo{2}{1},\quad \vec v_3=\vectwo{3}{4}.$$
Quel est l'espace généré par les combinaisons linéaires de ces trois vecteurs?

---

### Familles libres et liées

Dans les cas 1 et 3, on dit que la famille de vecteurs est *libre*. En d'autres termes, on ne peut pas obtenir un des vecteurs de famille en faisant des combinaisons linéaires des autres vecteurs de la famille. Ils sont *linéairement indépendants*.

A l'inverse 2 et 4, sont des familles liées: on peut obtenir au moins un des vecteurs de la famille par combinaison linéaire des vecteurs de la famille. Ils sont *linéairement dépendants*.

En notation mathématique, si on considère un ensemble $\{\vec v_i\}_{i=1}^n\in E$ et $\{\lambda_i\}_{i=1}^n\in K$ ($E$ est un espace vectoriel sur $K$), alors on dit que les vecteurs $\vec v_i$ sont *linéairement dépendants* si et seulement si
$$\sum_{i=1}^n\lambda_i \vec v_i=\vec{0},$$
avec au moins un $\lambda_i\neq 0$. On peut réécrire cette condition comme
$$\vec v_n=\sum_{i=1}^{n-1}\mu_i \vec v_i,$$
où au moins un des $\mu_i\neq 0$.

Inversement s'il n'existe pas de $\lambda_i$ non nul tel que
$$\sum_{i=1}^n\lambda_i \vec v_i=\vec{0},$$
alors les vecteurs sont *linéairement indépendants*.

---

Exercice +.#

Déterminer si les vecteurs des familles de l'exercice précédent sont linéairement dépendants ou indépendants.

---

### Base d'espace vectoriel

Soit à présent un ensemble de vecteur $B=\{\vec b_i\}_{i=1}^n$ qui sont linéairement indépendants (c'est une famille libre) et l'ensemble $E$, un espace vectoriel, généré par toutes les combinaisons linéaires de $B$. Alors on dit que l'ensemble $B$ est une *base* de $E$. N'importe quel vecteur de $E$ peut être obtenu comme une combinaison linéaire des vecteurs de la base
$B$.

En revanche, si $V=\{\vec v_i\}_{i=1}^n$ est une famille liée (ses vecteurs sont linéairement dépendants) et même s'ils génèrent le même ensemble $E$. L'ensemble $V$ ne forme pas une base. Une base est le plus "petit" ensemble de vecteur générant $E$.

---

Exercice +.#

Quelles familles de l'exercice 2 forment une base de l'espace généré par les familles?

---

De façon générale il n'existe pas une base unique d'un espace vectoriel. Dans l'espace $\real^2$, n'importe quelle paire de vecteurs linéairement indépendants forment une base. A contrario, on sait que n'importe quelle famille contenant au moins 3 vecteurs ne formeront pas une base de $\real^2$.

# Les applications linéaires

## Rappel sur les fonctions

Une fonction, notée $f$ (quelle originalité), est une relation entre deux ensembles. Soient deux ensembles $X$ et $Y$, cette fonction va associer à chaque élément de $X$ à un élément de $Y$ (voir la @fig:fonction)

![Une fonction est une relation entre deux ensemble, $X$ et $Y$, qui va relier un point de $X$ avec un point de $Y$.](figs/fonction.png){#fig:fonction width=30%}

On note de façon formelle
$$f:X\rightarrow Y.$$
Ici $X$ est le *domaine de définition* de $f$ et $Y$ est le *domaine d'arrivée*.
Cette notation nous donne juste le domaine de définition et le domaine d'arrivée de $f$ mais ne nous dit pas quelle est la règle d'association entre les éléments de $X$ et les éléments de $Y$.

Pour un exemple concret, on peut prendre
$$f:\real\rightarrow\real$$,
où $f$ est définie par
$$f:x\rightarrow x^2,\quad \mbox{ou}\quad f(x)=x^2.$$

On a donc ici que $\real$ est le domaine de définition et d'arrivée de $f$. En revanche tout $\real$ n'est pas "couvert" par les éléments de $f(x)$. On appelle l'image de $f$ le sous-ensemble du domaine d'arrivée qui est effectivement atteint par $f(x)$. Dans le cas ci-dessus le carré d'un nombre ne peut être négatif, donc tous les réels ne peuvent pas être associés à la fonction $x^2$ et donc l'image de $f$ est un sous-ensemble de $f$. Ici, l'image de $f$ est $\real^+$ (les nombres réels $x\in\real$ tels que $x\geq 0$).

On a vu ici une fonction unidimensionnelle, mais le concept de fonction s'étend à n'importe quel ensemble. Dans ce qui va nous intéresser pour la suite, on va avoir des fonctions de $n$-uplets ou de vecteurs à $n$ dimensions. En fait de façon aussi générale que possible, on va associer un $n$-uplet à un $m$-uplet (ou un vecteur de dimension $n$ à un vecteur de dimension $m$)
$$f:\real^n\rightarrow\real^m.$$

---

Illustration (Translation) +.#

Une telle fonction peut être une translation horizontale en deux dimensions
$$
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vec x\rightarrow \vec x+\vectwo{2}{0}.
\end{aligned}
$$

---

## Les fonctions linéaires

On dit qu'une fonction, $f$, (ou application) est linéaire si pour $E$, $V$ des espaces vectoriels sur $V$ avec
$$
f:E\rightarrow V.
$$
Et soient $\vec x, \vec y\in E$, et $\lambda\in K$, on a

1. La fonction appliquées à $\vec x+\vec y$ est égal à la somme de $f$ appliqué à $\vec x$ avec  $f$ appliqué à $y$

$$
f(\vec x+\vec y)=f(\vec x)+f(\vec y).
$$
2. Le produit de $\lambda$ avec $f$ appliqué à $\vec x$ est égal à $f$ appliqué à $\lambda\cdot \vec x$
$$
\lambda\cdot f(\vec x)=f(\lambda\cdot \vec x).
$$

---

Exemple +.#

Déterminer si la fonction
$$
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1+x_2}{2\cdot x_1}.
\end{aligned}
$$
est linéaire.

Solution +.#

Il faut vérifier les conditions 1 et 2 ci-dessus. Commençons par (1)
$$
f(\vec x+\vec y)=f\vectwo{x_1+y_1}{x_2+y_2}=\vectwo{x_1+y_1+x_2+y_2}{2\cdot(x_1+y_1)},
$${#eq:tmp1}
et
$$
f(\vec x)+f(\vec y)=\vectwo{x_1+x_2}{2\cdot x_1}+\vectwo{y_1+y_2}{2\cdot y_1}=\vectwo{x_1+y_1+x_2+y_2}{2\cdot(x_1+y_1)}.
$${#eq:tmp2}
Maintenant vérifions (2)
$$
\lambda f(\vec x) = \lambda \vectwo{x_1 + x_2}{2 \cdot x_1} = \vectwo{\lambda (x_1 + x_2)}{\lambda (2 \cdot x_1)},
$${#eq:tmp3}
et
$$
f(\lambda\vec x) = f\vectwo{\lambda x_1}{\lambda x_2} = \vectwo{\lambda x_1 + \lambda x_2}{ 2 \cdot \lambda x_1} = \vectwo{\lambda (x_1 + x_2)}{\lambda (2 \cdot x_1)}.
$${#eq:tmp4}
On voit que l'@eq:tmp1 et l'@eq:tmp2 sont égales, que l'@eq:tmp3 et l'@eq:tmp4 le sont aussi, donc la fonction $f$ est linéaire.

---

---

Exercice (Translation) +.#exercise:translation

Est-ce que la translation horizontale de $\vectwo{2}{0}$ est linéaire?
$$
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1}{x_2}+\vectwo{2}{0}.
\end{aligned}
$$

---

### Exemple de transformation linéaire sur un triangle: la rotation

En informatique, une grande partie des applications 3D sont basées sur la manipulation de triangles (pour représenter des surfaces).
Définissons un triangle avec les trois points
$$P_0=(0,0),\quad P_1=(1,0),\quad P_2=(0,1).$$
Les positions $P_0$, $P_1$ et $P_2$ suffisent pour décrire le triangle.
Cependant afin de les dessiner, il peut être utile de connaître également
les équations des segments reliant les points. Cela peut se faire via les vecteurs, $\vec x_0$, $\vec x_1$ et $\vec x_2$, reliant l'origine aux points $(voir la @fig:triangle)
$$\vec x_0=\vectwo{0}{0},\quad \vec x_1=\vectwo{1}{0},\quad \vec x_2=\vectwo{0}{1}.$${#eq:vec_rot}

![Les points $P_0$, $P_1$, et $P_2$. Les vecteurs $\vec x_1$ et $\vec x_2$.](figs/triangle.png){#fig:triangle width=30%}

Les équations paramétriques des segments reliant les points peuvent s'écrire en
$$\begin{aligned}
\vec s_0&=\lambda\cdot \vec x_1,\quad &\lambda\in[0,1],\\
\vec s_1&=\lambda\cdot \vec x_2,\quad &\lambda\in[0,1],\\
\vec s_2&=\lambda\cdot \vec x_1+(1-\lambda)\cdot \vec x_2,\quad &\lambda\in[0,1].
\end{aligned}$$
Ces trois vecteurs sont des *combinaisons linéaires* des vecteurs $\vec x_1$ et $\vec x_2$. Finalement, le triangle peut donc s'écrire comme l'ensemble des trois segments
$$\triangle=\{\vec s_0, \vec s_1, \vec s_2\}.$$

![Les segments $\vec s_0$, $\vec s_1$, et $\vec s_2$ relient les sommets des triangles. On peut exprimer leur équations paramétriques à l'aide des vecteurs $\vec x_1$, $\vec x_2$.](figs/triangle_seg.png){#fig:triangle_seg width=30%}

Définissons à présent l'application suivante
$$R:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{-x_1}.$$

---

Question +.#

Cette application est-elle linéaire?

---

L'effet de notre application $R$ sur les trois vecteurs $\vec x_i$ est la suivante
$$\begin{aligned}
R(\vec x_0)&=\vec x_0'=\vectwo{0}{0},\\
R(\vec x_1)&=\vec x_1'=\vectwo{0}{-1},\\
R(\vec x_2)&=\vec x_2'=\vectwo{1}{0}.
\end{aligned}$${#eq:segments}
Comme on peut le voir sur la @fig:triangle_rot notre application linéaire $R$, effectue une rotation de $\pi/2$ dans le sens des aiguilles d'une montre.

![Après application de la fonction linéaire $R$, les segments $\vec s_0'$, $\vec s_1'$, et $\vec s_2'$ relient les sommets des triangles qui peuvent être représents par les vecteurs $\vec x_0'$, $\vec x_1'$ et $\vec x_2'$](figs/triangle_rot.png){#fig:triangle_rot width=30%}

Les équations du triangle peuvent être obtenu de deux façons différentes. On veut calculer
$$\triangle'=\{\vec s_0',\vec s_1',\vec s_2'\}.$$
Soit on part des $\vec x_i'$ et on refait le même raisonnement que précédemment
pour relier les sommets des vecteurs et on obtient, $\vec s_0'$, $\vec s_1'$, et $\vec s_2'$ qui sont donnés par
$$\begin{aligned}
\vec s_0'&=\lambda\cdot \vec x_1',\quad &\lambda\in[0,1],\\
\vec s_1'&=\lambda\cdot \vec x_2',\quad &\lambda\in[0,1],\\
\vec s_2'&=\lambda\cdot \vec x_1'+(1-\lambda)\cdot \vec x_2',\quad &\lambda\in[0,1].
\end{aligned}$$
Soit on peut appliquer $R$ à $\vec s_0$, $\vec s_1$, et $\vec s_2$. Commençons par le calcul de $R(\vec s_0)$
$$
\vec s_0=R(\vec s_0)=R(\lambda\cdot \vec x_1)=\lambda\cdot R(\vec x_1)=\lambda \vec x_1',
$$
où à la deuxième égalité on a utilisé la propriété (2) de l'application linéaire. De même on peut écrire $\vec s_1'$
$$
\vec s_1'=R(\vec s_1)=R(\lambda\cdot \vec x_2)=\lambda\cdot R(\vec x_2)=\lambda \vec x_2'.
$$
Pour le cas de $\vec s_2'$, les choses sont un tout petit peu plus compliquées
$$\begin{aligned}
\vec s_2'&=R(\vec s_2)=R(\lambda\cdot \vec x_1+(1-\lambda)\cdot \vec x_2)
=\lambda\cdot R(\vec x_1)+(1-\lambda)\cdot R(\vec x_2)\\
&=\lambda\cdot \vec x_1'+(1-\lambda)\cdot \vec x_2',
\end{aligned}$$
où cette fois nous avons utilisé les propriétés (1) et (2) de l'application linéaire.

On voit qu'on a donc deux méthodes équivalentes pour calculer les segments constituant un triangle. Soit on calcule la rotation des segments en leur appliquant
la rotation $R$, soit on effectue la rotation des vecteurs $\vec x_i$ et on calcule les segments à partir des $\vec x_i$ tournés.

On constate également que cette application linéaire garde intacte la structure de notre triangle: les droites restent des droites et elles restent conectées entre elles. Cette propriété est générale pour toutes les applications linéaires. Les droites restent des droites, et la structure des objet reste la même.

Ici nous avons considéré une rotation qui est une application linéaire spéciale. Sous rotation les longueurs et les angles d'un objet restent les mêmes.

### Exemple de transformation linéaire sur un triangle: la dilatation

Si nous reprenons l'exemple de notre triangle qui relie les points $P_0$, $P_1$, et $P_2$ et que nous appliquons cette fois l'application linéaire $D$ définie par
$$
D:\vectwo{x_1}{x_2}\rightarrow  \vectwo{2\cdot x_1}{3\cdot x_2}.
$$
On va obtenir que les vecteurs $\vec x_i$ ($i=0,\dots,2$) seront transformés comme (voir la @fig:triangle_dil)
$$\begin{aligned}
\vec x_0'&=D(\vec x_0)=\vec x_0,\\
\vec x_1'&=D(\vec x_1)=\vectwo{2}{0},\\
\vec x_2'&=D(\vec x_2)=\vectwo{0}{3}.
\end{aligned}$$
Les segments seront donc simplement obtenus par $\triangle'=D(\triangle)$
$$\begin{aligned}
\vec s_0'&=\lambda\cdot \vec x_1',\quad &\lambda\in[0,1],\\
\vec s_1'&=\lambda\cdot \vec x_2',\quad &\lambda\in[0,1],\\
\vec s_2'&=\lambda\cdot \vec x_1'+(1-\lambda)\cdot \vec x_2',\quad &\lambda\in[0,1].
\end{aligned}$$
Une première chose à réaliser est que ces équations ont la même structure que les équations @eq:segments, bien que l'effet l'application linéaire soit très différent.

![Après application de la fonction linéaire $D$, les segments $\vec s_0'$, $\vec s_1'$, et $\vec s_2'$ relient les sommets des triangles qui peuvent être représents par les vecteurs $\vec x_0'$, $\vec x_1'$ et $\vec x_2'$](figs/triangle_dil.png){#fig:triangle_dil width=30%}

Sur la @fig:triangle_dil, nous constatons que les vecteurs $\vec x_1$ et $\vec x_2$ d'un facteur deux et d'un facteur trois respectivement. En revanche,
la figure géométrique transformée reste toujours un triangle. Comme pour la rotation, l'application de cette fonction linéaire n'a pas transformé les segments de droites
en une autre figure géométrique: ils sont restés des segments de droites.

### Exemple de transformation non-linéaire

Nous avons déjà vu (voir @exercise:translation) que la translation n'est pas une application linéaire.
Considérons à présent une autre application non-linéaire, $g$, définie comme
$$g:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1^2}{x_2^2}.$$
L'effet de $g$ sur les vecteurs $\vec x_i$ est le suivant
$$\begin{aligned}
\vec x_0'=g(\vec x_0)=\vec x_0,\\
\vec x_1'=g(\vec x_1)=\vec x_1,\\
\vec x_2'=g(\vec x_2)=\vec x_2.
\end{aligned}$$
L'effet sur les segment en revanche est très différent
$$\begin{aligned}
\vec s_0'=g(\vec s_0)=\lambda^2\vec x_1,\\
\vec s_1'=g(\vec s_1)=\lambda^2\vec x_2,\\
\vec s_2'=g(\vec s_2)=\lambda^2\vec x_1+(1-\lambda)^2\vec x_2.
\end{aligned}$$
On voit donc que comme prévu on a que
$$\begin{aligned}
\vec s_0'\neq \lambda\vec x_1,\\
\vec s_1'\neq \lambda\vec x_2,\\
\vec s_2'\neq \lambda\vec x_1+(1-\lambda)\vec x_2,
\end{aligned}$$
comme cela serait le cas pour une application linéaire.

L'effet de cette application non-linéaire peut se voir sur la @fig:triangle_non_lin. On voit que les deux segments
alignés avec les axes principaux restent des droites. En revanche l'hypoténuse du triangle n'est plus une droite mais un bout de parabole.
Contrairement aux applications linéaires, on voit que les applications non-linéaires peuvent transformer les droites en d'autres figures géométriques.

![L'effet de l'application non-linéaire $g$ sur le triangle constitué des points $P_0,P_1,P_2$.](figs/triangle_non_lin.png){#fig:triangle_non_lin width=30%}

## Les applications linéaires comme un produit matrice-vecteur

Dans cette section, nous allons montrer qu'une application linéaire peut s'écrire sous la forme du produit entre une matrice et un vecteur.

### Introduction aux matrices

Une matrice est un tableau de nombres à double entrée qui de façon générale a un nombre $m$ de lignes et $n$ de colonnes.
On note l'espace des matrices de taille $m\times n$ à coefficient réels
$$
M_{m,n}(\real)[^3].
$$
Par exemple la matrice $\mat{A}$[^2] suivante est de taille $2\times 3$
$$\mat{A}=\begin{pmatrix} 1 & 2 & 3 \\ 2 & 3 & 4 \end{pmatrix},$${#eq:mat_23}
elle possède deux lignes et trois colonnes.
Une matrice, $\mat{A}$ de taille $\m\times n$, se note
$$\mat{A}=\begin{pmatrix} a_{11} & a_{12}  & \cdots & a_{1n} \\
                          a_{21} & a_{22}  & \cdots & a_{2n} \\
                          \vdots & \vdots  & \ddots & \vdots \\
                          a_{m1} & a_{m2}  & \cdots & a_{mn} \end{pmatrix},$$
où les $a_{ij}$ sont les indices de la matrice $\mat{A}$, avec $i=1..m$ et $j=1..n$.

Si $m=1$, alors la matrice n'est rien d'autre qu'un vecteur *ligne*
$$\mat{A}=\begin{pmatrix} a_{1} & a_{2}  & \cdots & a_{n} \end{pmatrix}.$$
Alors que si $n=1$, alors la matrice est un vecteur *colonne*
$$\mat{A}=\begin{pmatrix} a_{1}  \\
                          a_{2}  \\
                          \vdots \\
                          a_m      \end{pmatrix}.$$

On peut aussi voir une matrice $m\times n$ comme un vecteur "ligne" à $n$ composantes de vecteurs "colonne"
$$\mat{A}=\begin{pmatrix} \vec a_{1} & \vec a_{2}  & \cdots & \vec a_{n} \end{pmatrix},$$
où tous les $\vec a_i$ ont une longueur $m$. C'est souvent la structure de donnée utilisée en informatique.
En python on écrirait une matrice $2\times 3$ comme ci-dessous.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> [[1, 2, 3], [2, 3, 4]] # a list of list
[[1, 2, 3], [2, 3, 4]]
>>> import numpy as np
>>> np.matrix([[1, 2, 3], [2, 3, 4]]) # the matrix structure un numpy
matrix([[1, 2, 3],
        [2, 3, 4]])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

On constate que la convention utilisée par NumPy est que nous construisons une matrice
comme un vecteur "colonne" de taille $n$, composé de $m$ vecteurs "ligne".

Afin d'accéder à l'élément $i,j$ de la matrice, on peut utiliser la notation $\{\mat{A}\}_{ij}=a_{ij}$.
Dans le cas de la matrice de l'@eq:mat_23, l'élément $A_{12}$ est en rouge ci-dessous
$$\mat{A}=\begin{pmatrix} 1 & \color{red}{2} & 3 \\ 2 & 3 & 4 \end{pmatrix},$$
ou encore
$$\{\mat{A}\}_{12}=a_{12}=2.$$

En fait il se trouve que l'espace des matrices, de taille $m\times n$, à coefficients réels est un espace vectoriel[^3] dans $\real$, muni de la somme et de la multiplication
par un scalaire qui est "la même" que pour les vecteurs. Cette propriété a pour effet que la somme de deux matrices sera toujours une matrice et que la multiplication par un scalaire d'une matrice sera toujours une matrice. Voyons à présent comment on définit ces deux opérations.

### La somme de matrices

Soient $\mat{A}$ et $\mat{B}$ deux matrices à coefficients réels. On a que l'opération "+" est simplement la somme de chaque élément de la matrice $\mat{A}$
avec l'élément correspondant de la matrice $\mat{B}$
$$
\{\mat{A}+\mat{B}\}_{ij}=a_{ij}+b_{ij}.
$$

Remarque +.#

Il faut noter que pour que cette opération soit bien définie la taille de la matrice $\mat{A}$ et de la matrice $\mat{B}$ doivent être la même.

---

Illustration (Somme de matrices) +.#

La somme des matrices $\mat{A}$ et $\mat{B}$ données par
$$
\begin{aligned}
\mat{A}&=\begin{pmatrix}  1 & 2 & 3 \\  2 & 3 & 4 \end{pmatrix},
\mat{B}&=\begin{pmatrix} -1 & 2 & 1 \\ -1 & 1 & -3 \end{pmatrix},
\end{aligned}
$$
est donnée par
$$\mat{A}+\mat{B}=\begin{pmatrix} 0 & 4 & 4 \\ 1 & 4 & 1 \end{pmatrix}.$$

---

En Python la somme peut se faire en parcourant les indices dans deux boucles ou à l'aide de la librairie NumPy

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> A=[[ 1, 2, 3], [ 2, 3,  4]]
>>> B=[[-1, 2, 1], [-1, 1, -3]]
>>> C=[[0,0,0],[0,0,0]]
>>> for i in range(2):
...     for j in range(3):
...             C[i][j]=A[i][j]+B[i][j]
...
>>> C
[[0, 4, 4], [1, 4, 1]]
>>> import numpy as np
>>> A=np.matrix([[ 1, 2, 3], [ 2, 3,  4]])
>>> b=np.matrix([[-1, 2, 1], [-1, 1, -3]])
>>> A+B
matrix([[0, 4, 4],
        [1, 4, 1]])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### La multiplication avec un scalaire d'une matrice

Soit $\mat{A}$ une matrice à coefficients réels et $\lambda\real$. On a que l'opération "$\cdot$" avec un scalaire est simplement le produit de chaque élément de la matrice $\mat{A}$
avec $\lambda$
$$
\{\lambda\cdot\mat{A}\}_{ij}=\lambda\cdot a_{ij}.
$$

---

Illustration (Produit de matrice avec un scalaire) +.#

Le produit de la matrice $\mat{A}$ donnée par
$$
\begin{aligned}
\mat{A}&=\begin{pmatrix}  1 & 2 & 3 \\  2 & 3 & 4 \end{pmatrix},
\end{aligned}
$$
et $\lambda=2$ est donné par
$$\lambda\cdot\mat{A}=\begin{pmatrix} 2 & 4 & 6 \\ 4 & 6 & 8 \end{pmatrix}.$$

---

En Python ce produit peut se faire en parcourant les indices dans deux boucles ou à l'aide de la librairie NumPy

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> A=[[ 1, 2, 3], [ 2, 3,  4]]
>>> C=[[0,0,0],[0,0,0]]
>>> alpha = 2
>>> for i in range(2):
...     for j in range(3):
...             C[i][j]=alpha*A[i][j]
...
>>> C
[[2, 4, 6], [4, 6, 8]]
>>> import numpy as np
>>> A=np.matrix([[ 1, 2, 3], [ 2, 3,  4]])
>>> alpha = 2
>>> alpha * A
matrix([[2, 4, 6],
        [4, 6, 8]])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### Le produit matrice-vecteur

Après avoir défini le produit d'une matrice avec un scalaire et l'addition de matrice, il peut être très pratique de disposer d'un produit entre une matrice et un vecteur.

Soient une matrice, $\mat{A}$, de taille $m\times n$ et un vecteur, $\vec v$, de taille $n$. Le produit de la matrice et du vecteur, qui aura comme résultat un vecteur de taille $m$, et sera noté $\vec u = \mat{A}\cdot \vec v$, se définit comme
$$
\{\mat{A}\cdot \vec v\}_i=u_i=\sum_{k=1}^n a_ij\cdot v_j=a_{i1}\cdot a_1+\dots+a_{in}\cdot a_n,\mbox{ avec } i=1,...,m.
$${#eq:mat_vec}
On constate d'après cette définition qu'il est très important que le nombre de colonnes du vecteur soit le même que le nombre de lignes du vecteur, sinon ce produit est mal défini.

---

Exemple (Matrice identité) +.#

Soit la matrice $\mat{I}_2$, qui est une matrice $2\times 2$, qui est définie par
$$
\mat{I}_2=\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}.
$$
On définit également un vecteur $\vec v\in\real^2$
$$\vec v=\vectwo{v_1}{v_2}.$$
Calculer le produit $\mat{I}\cdot \vec v$.

Solution (Matrice identité) +.#

En utilisant la définition de l'@eq:mat_vec, on a que
$$
\{\mat{I}\cdot \vec v\}_i=\sum_{i=1}^2 i_{ij}\cdot v_j,
$$
ou réécrit par composante
$$
\begin{aligned}
&i=1:\quad \{\mat{I}_2\cdot \vec v\}_1=\sum_{i=1}^2 i_{1j}\cdot v_j=i_{11}\cdot v_1+i_{12}\cdot v_2=v_1,\\
&i=2:\quad \{\mat{I}_2\cdot \vec v\}_2=\sum_{i=1}^2 i_{2j}\cdot v_j=i_{21}\cdot v_1+i_{22}\cdot v_2=v_2.
\end{aligned}
$$

---

Grâce à cet exemple on se rend compte que la matrice identité est l'élément neutre pour le produit matrice-vecteur: elle laisse
le vecteur inchangé.

Le produit matrice-vecteur s'écrit en Python

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> A=[[ 1, 2, 3], [ 2, 3,  4]]
>>> x=[-1,1,-1]
>>> b=[0,0]
>>> for i in range(2):
...     for j in range(3):
...             b[i] += A[i][j]*x[j]
...
>>> b
[-2, -3]
>>> import numpy as np
>>> A=np.matrix(A)
>>> x=np.array(x)
>>> A.dot(x)
matrix([[-2, -3]])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

---

Remarque  +.#

Le produit d'une matrice avec un vecteur n'est pas commutatif.

---

Le produit d'une matrice avec un vecteur est une application linéaire. On peut montrer que si $\mat{A}\in M_{m,n}(\real)$ est une matrice à coefficients réels de dimension $m\times n$, $\lambda\in\real$ un scalaire, et $\vec u, \vec v\in \real^n$ deux vecteurs colonnes de taille $n$, alors
$$
\begin{aligned}
&\mat{M}\cdot(\vec u + \vec v)= \mat{M}\cdot \vec u+\mat{M}\vec v,\\
&\lambda\cdot \mat{M}\vec u= \mat{M}\cdot (\lambda\cdot \vec u).
\end{aligned}
$$

---

Exerice +.#

Démontrer que le produit matrice vecteur est une application linéaire.

---

### Le produit matrice-vecteur dans le cas de la rotation

L'application linéaire pour la rotation bidimensionnelle de $\pi/2$ dans le sens des aiguilles d'une montre est définie comme
$$R:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{-x_1}.$$
En fait cette application peut s'écrire comme un produit de matrice avec un vecteur
$$R:\vectwo{x_1}{x_2}\rightarrow \mat{R}\cdot \vec x,$$
où
$$\mat{R}=\begin{pmatrix}  0 & 1 \\  -1 & 0 \end{pmatrix}.$${#eq:mat_r}
On peut donc écrire
$$\mat{R}=\begin{pmatrix}  0 & 1 \\  -1 & 0 \end{pmatrix}\cdot \vectwo{x_1}{x_2}=\vectwo{x_2}{-x_1}.$$

Nous pouvons à présent calculer la rotation des trois vecteurs
que nous avions défini à l'@eq:vec_rot
$$\vec x_0=\vectwo{0}{0},\quad \vec x_1=\vectwo{1}{0},\quad \vec x_2=\vectwo{0}{1}.\nonumber$$
On a donc
$$\begin{aligned}
\vec x_0'=\mat{R}\cdot\vec x_0=\vectwo{0}{0},\\
\vec x_1'=\mat{R}\cdot\vec x_1=\vectwo{0}{-1},\\
\vec x_2'=\mat{R}\cdot\vec x_2=\vectwo{1}{0}.
\end{aligned}\nonumber$$
Qui est exactement le même résultat que ce qu'on avait obtenu dans l'@eq:segments.

### Généralisation: les applications linéaires comme produit matrice-vecteur

On vient de voir que la rotation de $\pi/2$ peut se voir comme un produit d'une matrice avec un vecteur.
En fait cette propriété peut se généraliser à n'importe quelle application linéaire. Pour
montrer cette propriété commençons par introduire la matrice identité dans le cas général, $\mat{I}_n\in M_{n,n}(\real)$, qui
est une matrice carrée de taille $n\times n$, et dont tous les éléments sont nuls excepté la diagonale qui vaut un.
$$
\mat{I}_n=\begin{pmatrix} 1      & 0       & 0      & \cdots & 0 \\
                        0      & 1       & 0      & \cdots & 0 \\
                        \vdots & \vdots  & \ddots & \vdots & \vdots \\
                        \vdots & \vdots  & 0      & 1      & 0 \\
                        0      & 0       & \cdots & 0      & 1 \end{pmatrix}.
$$
Il existe plusieurs autres notations pour la matrice identité. Sous la forme d'une matrice diagonale
$$
\mat{I}_n=\mathrm{diag}(\underbrace{1,1,1,...,1}_{n\ \mathrm{ éléments}}),
$$
grâce au symbole du $\delta$ de Kronecker
$$
\left\{\mat{I}_n\right\}_{ij}=\delta_{ij},
$$
où $\delta_{ij}$ est donné par
$$
\delta_{ij}=\left\{\begin{matrix}
				1 & \mbox{si }i=j \\
				0 & \mbox{si }i\neq j
				\end{matrix}
				\right.
$$

---

Illustration (La matrice identité en deux/trois dimensions) +.#

Pour $n=3$ on a
$$
\mat{I}_3=\begin{pmatrix} 1      & 0 & 0\\
                          0      & 1 & 0\\
                          0      & 0 & 1 \end{pmatrix}.
$$

---

Le produit de la matrice identité $\mat{I}_n$ avec un vecteur $\vec v\in \real^n$
nous donne
$$
\left\{\mat{I}_n\cdot \vec v\right\}_i=\sum_{j=1}^{n} \mat{I}_{n,ij}v_j=0\cdot v_1+0\cdot v_2+...+1\cdot v_i+0\cdot v_{i+1}+...+0\cdot v_n=v_i,
$$
ou en notation vectorielle uniquement
$$
\mat{I}_n\cdot\vec v=\vec v.
$$
On voit donc que la matrice unité est l'élément neutre mutliplicatif pour le produit matrice-vecteur. Une autre constatation qu'on peut faire au sujet de la matrice identité
c'est qu'elle est en fait composée de $n$ vecteurs colonne de la base canonique
$$\mat{I}_n=\begin{pmatrix}
		f(\vec e_1) & f(\vec e_2) & \cdots & f(\vec e_n)
\end{pmatrix},$$
où $\vec e_i$ est donné par
$$
\vec e_i=\begin{pmatrix}
						  0      \\
                          \vdots \\
                          0 \\
                          1      \\
                          0\\
                          \vdots \\
                          0
                  \end{pmatrix},
$$
où le seul élément valant 1 est à la $i$-ème ligne.

---

Illustration (Base canonique en deux dimensions) +.#

En 2D la base canonique est bien connue et est
$$\vec e_1=\vectwo{1}{0},\quad \vec e_2=\vectwo{0}{1}.$$
Dans ce cas-là il est trivial de vérifier que
$$\mat{I}_2=\begin{pmatrix} 1      & 0 \\
                            0      & 1  \end{pmatrix}
           =\begin{pmatrix}
		\vec e_1 & \vec e_2
\end{pmatrix}.
$$

---

Grâce à la définition d'une base, nous savons que n'importe quel vecteur $\vec v\in \real^n$ peut s'exprimer comme une combinaison linéaire de la base canonique
$$
\vec v=\begin{pmatrix}
		v_1      \\
		v_2      \\
        \vdots \\
        v_n
\end{pmatrix}
=v_1\cdot \vec e_1+...+v_n\cdot \vec e_n
=\begin{pmatrix}
		v_1      \\
		0      \\
        \vdots \\
        0
\end{pmatrix}+
\begin{pmatrix}
		0      \\
		v_2      \\
        \vdots \\
        0
\end{pmatrix}+...+
\begin{pmatrix}
		0      \\
		0      \\
        \vdots \\
        v_n
\end{pmatrix}=\mat{I}_n\cdot \vec v.
$$
Si à présent nous appelons une transformation linéaire
$$f:\real^n\rightarrow m$$ et que nous l'appliquons au vecteur $\vec v\in\real^n$,
on a
$$
f(\vec v)=f(v_1\cdot \vec e_1+v_2\cdot \vec e_2+...+v_n\cdot \vec e_n)=
	v_1\cdot f(\vec e_1)+v_2\cdot f(\vec e_2)+...+v_n\cdot f(\vec e_n),
$$
où dans la dernière égalité, on a utilisé le fait que l'application $f$ est linéaire.
Cette dernière équation peut se réécrire comme le produit d'une matrice, notons la $\mat{F}$ avec le vecteur $\vec v$
$$
f(\vec v)=\mat{F}\cdot \vec v,
$$
où $\mat{F}$ peut s'écrire
$$
\mat{F}=
\begin{pmatrix}
		f(\vec e_1) & f(\vec e_2) & \cdots & f(\vec e_n)
\end{pmatrix}.
$$
On voit donc que la matrice $\mat{F}$ est composée de $n$ vecteur colonne qui sont les images des $\vec e_i$ par l'application linéaire $f$.

---

Exemple (La rotation revisitée) +.#

A l'aide de la méthode générale ci-dessus écrire la matrice, $\mat{R}$, de transformation linéaire pour le cas de la rotation $R$ (voir la sous-section précédente)
$$R:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{-x_1}.\nonumber$$

Solution (La rotation revisitée) +.#

La matrice $\mat{R}$ se construit en calculant les images des vecteurs de base
$$
\mat{R}=\begin{pmatrix}
		R(\vec e_1) & R(\vec e_2)
\end{pmatrix}.
$$ Ici, nous avons $\vec e_1$ et $\vec e_2$ qui sont donnés par
$$\vec e_1=\vectwo{1}{0},\quad \vec e_2=\vectwo{0}{1}.\nonumber$$
Il est donc assez simple de calculer $R(\vec e_1)$ et $R(\vec e_2)$
$$
R(\vec e_1)=\vectwo{0}{-1},\quad R(\vec e_2)=\vectwo{1}{0}.
$$
On a donc que la matrice $\mat{R}$ peut s'écrire
$$
\mat{R}=\begin{pmatrix}
		 0 & 1\\
		-1 & 0
\end{pmatrix}.
$$
On vérifie donc bien que le résultat est exactement le même
résultat qu'à l'@eq:mat_r (nous voilà donc rassurés).

---

Afin de compliquer un peu l'affaire essayons de voir un ca un peu plus compliqué, où
la transformation linéaire fait intervenir plus de dimensions

---

Exemple (Une autre application linéaire) +.#

Soit l'application linéaire $f$, telle que
$$
\begin{aligned}
&f:\real^2\rightarrow \real^3,\\
&f:\vectwo{x_1}{x_2}\rightarrow \begin{pmatrix}
		2x_1-x_2\\
		3x_2\\
		-4x_1+2x_2
\end{pmatrix}.
\end{aligned}
$$

Calculer la matrice $\mat{F}$ correspondant à cette transformation linéaire.

Solution (Une autre application linéaire) +.#

Il faut calculer les images des vecteur $\vec e_1$ et $\vec e_2$ via cette application linéaire. On a donc
$$
f(\vec e_1)=\begin{pmatrix}
		2\cdot 1-0\\
		3\cdot 0\\
		-4\cdot 1+2\cdot 0
\end{pmatrix}=\begin{pmatrix}
		2\\
		0\\
	   -4
\end{pmatrix},
$$
et
$$
f(\vec e_2)=\begin{pmatrix}
		2\cdot 0-1\\
		3\cdot 1\\
		-4\cdot 0+2\cdot 1
\end{pmatrix}=\begin{pmatrix}
	   -1\\
		3\\
	    2
\end{pmatrix}.
$$
La matrice $\mat{F}$ est donc donnée par
$$
\mat{F}=\begin{pmatrix}
	   2 & -1\\
	   0 & 3\\
	  -4 &  2
\end{pmatrix}.
$$
On peut assez facilement calculer $\mat{F}\cdot \vec x$ avec $\vec x=\vectwo{x_1}{x_2}$
$$
\mat{F}\cdot \vec x=\begin{pmatrix}
	   2 & -1\\
	   0 & 3\\
	  -4 &  2
\end{pmatrix}\cdot\vectwo{x_1}{x_2}=\begin{pmatrix}
	   2x_1 -x_2\\
	   3x_2\\
	  -4x_1 +2x_2
\end{pmatrix},
$$
ce qui est bien la définition de la fonction linéaire $f$ (les blagues les plus courtes étant toujours les meilleures, je ne vais pas réécrire que nous sommes rassurés, mais le cœur y est).

---

### L'image d'une application linéaire

Nous avons vu jusqu'à présent un certain nombre d'applications linéaires. De façon générale une transformation linéaire, $f$, est définie d'un espace vectoriel
$E$ dans un espace vectoriel $V$
$$
f:E\rightarrow V,\nonumber
$$
où $E$ et $V$ sont les domaines de définition et d'arrivée de $f$. Nous pouvons définir l'image de $E$ par $f$, notée $\mathrm{Im}(f)$, comme
$$
\mathrm{Im}_E(f)=\{\vec v\in V | \vec v = f(\vec u),\ \forall \vec u\in E\}.
$$
Ou en termes moins mathématiques, tous les vecteurs de $V$ qu'on peut effectivement atteindre depuis un vecteur de $E$ via l'application $f$.

Une illustration de l'image de $f$ peut se voir sur la @fig:fonction_image. L'ensemble $\Im(f)$ doit être inclus dans $V$ (il peut être plus petit ou égal, mais certainement
pas plus grand).

![La fonction $f$ applique les éléments de $E$ dans un sous-espace de $V$, noté $\mathrm{Im}_E(f)$.](figs/fonction_image.png){#fig:fonction_image width=30%}

---

Illustration (L'application nulle) +.#

La fonction $f$
$$
\begin{aligned}
&f : \real \rightarrow\real,\\
&f : x \rightarrow 0.
\end{aligned}
$$
Néanmoins, tous les points de $\real$ ne peuvent pas être atteints par $f(x)$. En fait
l'image de $f$ est
$$
\mathrm{Im}_\real(f)=\{0\}.
$$

---

Par ailleurs, si $f$ est linéaire, on peut montrer que l'ensemble $\mathrm{Im}_E(f)$ est un sous-espace vectoriel. C'est-à-dire que
si $f(\vec u), f(\vec v)\in \mathrm{Im}_E(f)$ et $\lambda\in K$, alors
$$
\begin{aligned}
&f(\vec u)+f(\vec v)\in \mathrm{Im}_E(f),\ \mathrm{et},\\
&\lambda\cdot f(\vec v)\in \mathrm{Im}_E(f).
\end{aligned}
$$

---

Exercice +.#

Montrer que ces deux propriétés sont satisfaites pour $f$ une application linéaire.

---

Dans le cas d'une application linéaire l'interprétation de l'image d'une application linéaire est intéressante. Nous avons vu que
toute application linéaire peut s'écrire comme un produit matrice-vecteur. Si $\vec v\in E$, alors on peut écrire
$$
f(\vec v)=\mat{F}\cdot \vec v,
$${#eq:eq_f}
où $\mat{F}$ est donnée par
$$
\mat{F}=
\begin{pmatrix}
		f(\vec e_1) & f(\vec e_2) & \cdots & f(\vec e_n)
\end{pmatrix}=
\begin{pmatrix}
		\vec f_1 & \vec f_2 & \cdots & \vec f_n
\end{pmatrix},
$$
et où la matrice de l'application linéaire est l'image de chacun des vecteurs d'une base de $E$, notés $\{\vec f_i\}_{i=1}^n=\{f(\vec e_i)\}_{i=1}^n$.
L'image de l'application linéaire sera donc l'espace engendré par l'espace engendré par la famille de vecteurs
$\{\vec f\}_{i=1}^n$, soit l'ensemble des vecteurs obtenus par des combinaisons linéaires obtenues à partir des vecteurs $\vec f_i$.

En effet, avec cette dernière notation, on peut écrire l'@eq:eq_f comme
$$
\mat{F}\cdot \vec v=v_1\vec f_1+v_2\vec f_2+v_3\vec f_3+\dots+v_n\vec f_n,
$$
et comme $\{v_i\}_{i=1}^n$ est quelconque nous avons bien que l'équation ci-dessus décrit toutes les combinaisons linéaires de $\{\vec f\}_{i=1}^n$.

---

Illustration (Image de la rotation) +.#

L'image de la rotation
$$\begin{aligned}
&R:\real^2\rightarrow\real^2,\\
&R:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{-x_1},
\end{aligned}
\nonumber$$
s'écrit sous la forme d'une matrice comme
$$
\mat{R}=\begin{pmatrix}
		 0 & 1\\
		-1 & 0
\end{pmatrix}.\nonumber
$$
On a donc que la famille de vecteurs est
$$\left\{\vectwo{0}{-1},\vectwo{1}{0}\right\}.$$
Cet ensemble forme une base de $\real^2$ car ils ne sont pas colinéaires.

---

En fait, on peut généraliser le concept et étudier les images de n'importe quel sous espace vectoriel
de $E$ par $f$. Si $A\subset E$, l'image de $A$ par $f$, sera noté $\mathrm{Im}_A(f)$.

---

Illustration +.#

Soit la rotation $R$ définie comme
$$
\vec y=\mat{R}\cdot \vec x,
$$
qui est définie de $\real^2$ dans $\real^2$ avec
$$\mat{R}=\begin{pmatrix}
		 0 & 1\\
		-1 & 0
\end{pmatrix}.
$$
Nous avons vu que $Im_\real^2(R)=\real^2$.

Considérons les sous-ensembles $A=\real\times 0$, et $B=0\times \real$.
Les images de ces deux sous-ensembles sont les espaces engendrés par
$\vectwo{1}{0}$ pour $A$ et $\vectwo{0}{1}$ pour $B$ et sont donc
$$
\begin{aligned}
\mathrm{Im}_A&=0\times \real,\\
\mathrm{Im}_B&=\real\times 0.
\end{aligned}
$$

---

---

Exercice (Images) +.#

Quelles sont les images des applications linéaires suivantes:

1.$$
\begin{aligned}
f:\real^2\rightarrow \real^2,\\
f:\vectwo{x_1}{x_2}\rightarrow \vectwo{0}{0},\\
\end{aligned}
$$
2.
$$
\begin{aligned}
f:\real^2\rightarrow \real^2,\\
f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{0},\\
\end{aligned}
$$
3.
$$
\begin{aligned}
&f:\real^2\rightarrow \real^3,\\
&f:\vectwo{x_1}{x_2}\rightarrow \begin{pmatrix}
		2x_1-x_2\\
		3x_2\\
		-4x_1+2x_2
\end{pmatrix}.
\end{aligned}
$$

---

### Préimage (ou antécédent) d'une application linéaire

Reprenons notre application linéaire $f$ qui est une fonction de $E$ dans $V$ ($E$ et $V$ sont des espace vectoriels sur $K$).
Dans la section précédente, nous avons étudié le sous-ensemble de $V$ qui est l'image de $E$ par $f$.

A présent, nous allons considérer un sous-ensemble du domaine d'arrivée, $Y\subseteq V$ et chercher l'ensemble, $X\subseteq E$,
tel que $f(\vec x)\in Y$ pour $\vec x\in X$. En d'autres termes, nous cherchons l'ensemble des pré-images, $X$, qui ont une image dans $Y$
(voir @fig:fonction_preimage).

![On cherche le sous-ensemble $X$ de $E$ tel que les images de $X$ sont dans $Y$ qui est un sous-ensemble de $V$.](figs/fonction_preimage.png){#fig:fonction_preimage width=30%}

Dans une notation plus mathématiques nous pouvons écrire
$$
X=\{\vec x | f(\vec x)\in Y \}.
$$

---

Remarque +.#

Il se peut tout à fait possible qu'un élément de $Y$ n'ait pas de pré-image dans $E$ (et donc dans $X$). En d'autres termes qu'il n'existe
pas de $\vec x$ tel que $f(\vec x)=\vec y$, pour $\vec y\in Y$. Ou encore que l'image de $X$ par $f$, $\mathrm{Im}_X(f)\subseteq Y$.

---

L'ensemble $X$ est appelé *l'antécédent* de $Y$, ou la pré-image de $Y$ par $f$, ou encore l'image inverse de $Y$ par $f$.
Une façon de noter cet ensemble est $X=f^{-1}(Y)$, où $f^{-1}$ est la *fonction inverse* de $f$.

---

Illustration (Antécédent de la rotation) +.#

Reprenons notre exemple favori qu'est la rotation de $\pi/2$ dans le sens des aiguilles d'une montre.
L'application linéaire est
$$
R:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_2}{-x_1}.
$$
Nous choisissons les vecteurs suivants
$$
\begin{aligned}
\vec y_0&=\vectwo{0}{0},\\
\vec y_1&=\vectwo{0}{-1},\\
\vec y_2&=\vectwo{1}{0}.
\end{aligned}
$$
Et définissons le sous-ensemble $Y=\left\{\vec y_0,\vec y_1, \vec y_2\right\}$.

En fait ce que nous cherchons à présent se sont les vecteurs $\vec x_0$, $\vec x_1$, et $\vec x_2$ de $X$ tel quel
$$
\begin{aligned}
R(\vec x_0)&=\vec y_0,\\
R(\vec x_1)&=\vec y_1,\\
R(\vec x_2)&=\vec y_2.
\end{aligned}
$$
Pour chacune de ces équations on peut écrire deux équations à deux inconnues.
En commençant par $\vec y_0$, on a
$$
\begin{aligned}
R(\vec x_0)=\vec y_0,\\
\vectwo{x_{0,2}}{-x_{0,1}}=\vectwo{0}{0}.
\end{aligned}
$$
La solution de cette équation est très simple à trouver et on a
$$
\vec x_0=\vectwo{0}{0}.
$$
On peut faire de même avec $\vec y_1$ et $\vec y_2$. On trouve pour chacune de ces équations
$$
\begin{aligned}
R(\vec x_1)=\vec y_1,\\
\vectwo{x_{1,2}}{-x_{1,1}}=\vectwo{0}{-1},
\end{aligned}
$$
et
$$
\begin{aligned}
R(\vec x_2)=\vec y_2,\\
\vectwo{x_{2,2}}{-x_{2,1}}=\vectwo{1}{0}.
\end{aligned}
$$
On trouve donc pour $\vec x_1$ et $\vec x_2$
$$
\vec x_1=\vectwo{1}{0},\quad\vec x_2=\vectwo{0}{1}.
$$

---

Dans l'exemple ci-dessus, nous avons trouvé une unique préimage pour chacune des images données. Cela n'est pas toujours le cas. Il se peut qu'on ait une infinité de préimages ou aucune dépendant de l'application linéaire et des images.

Soit l'application linéaire $g$, définie comme
$$\begin{aligned}
&g:\real\rightarrow\real,\\
&g:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1+x_2}{2x_1+4x_2}.
\end{aligned}
$$
Si nous cherchons l'antécédent des vecteurs $\vec y_0=\vectwo{0}{0}$ et $\vec y_1=\vectwo{0}{1}$. Pour le cas de $\vec y_0$, on peut écrire le système d'équations suivant
$$
\begin{aligned}
&x_1+2 x_2=0,\\
&2x_1+4 x_2=0.
\end{aligned}
$$
La solution à cette équation est
$$
\vec x=\alpha\cdot\vectwo{-2}{1},\ \alpha\in\real.
$$
Cela représente en fait l'ensemble de tous les points de la droite qu'on peut générer à partir du vecteur $\vectwo{-2}{1}$ (voir @fig:preimage_droite).

![La droite (en trait-tillés) générée par le vecteur $\vec x=(-2,1)^\mathrm{T}$ (en trait plein).](figs/preimage_droite.png){#fig:preimage_droite width=50%}

---

Remarque +.#

L'ensemble de points qui est envoyé sur le point $\vectwo{0}{0}$ est appelé le *noyau* d'une application linéaire. On le note souvent $\mathrm{Ker}(f)$ (pour kernel)
$$
\mathrm{Ker}(f)=\left\{\vec x\in E | f(\vec x)=\vec 0\right\}=f^{-1}(\vec 0).
$$

---

A l'inverse pour $\vec y_1$ le système d'équations
$$
\begin{aligned}
&x_1+2 x_2=0,\\
&2x_1+4 x_2=1,
\end{aligned}
$$
n'admet aucune solution.

On voit donc qu'on a deux comportement totalement différents pour notre deux images $\vec y_0$ et $\vec y_1$. Dans le premier cas, le point $\vec y_0=\vectwo{0}{0}$ est associé à une droite et dans le deuxième cas  $\vec y_1=\vectwo{1}{0}$ n'admet aucune préimage.

### L'inverse d'une application linéaire

Dans la section précédente, nous avons vu le concept de d'antécédent d'un espace vectoriel. Pour une fonction linéaire
$$
f:E\rightarrow V,
$$
et $Y\subseteq V$, nous avons construit $X=f^{-1}(Y)$ l'ensemble des préimages de $Y$. Nous voulons à présent nous intéresser de plus près à la fonction inverse $f^{-1}$.

La fonction $f^{-1}$, si elle existe, associe un élément de $Y$ à exactement un point de $X$ (autrement ce n'est pas une fonction). Or on a vu dans le dernier exemple de la section ci-dessus, qu'on pouvait se retrouver avec des antécédents qui associent un point avec une droite ou un point avec l'ensemble vide.

Dans le premier cas, on a donc clairement que l'ensemble $f^{-1(Y)}$ ne peut pas se représenter à l'aide d'une fonction et dans le deuxième cas, on aurait que $Y$ ne serait pas le domaine de définition de $f^{-1}$. Il faut donc clarifier un peu cette notation pour être plus stricts.

Soit une fonction $f$, définie de $X$ dans $Y$. Comme nous venons de le discuter, la fonction $f^{-1}$, si elle existe, est définie de $Y$ dans $X$
$$
\begin{aligned}
&f:X\rightarrow Y,\\
&f^{-1}:Y\rightarrow X.
\end{aligned}
$$

---

Remarque +.#

Nous rappelons ici qu'une fonction doit associer un unique élément de son espace d'arrivée à un élément de son domaine de définition.

---

On dit que l'application $f$ est *inversible*, si et seulement si,
$$
\begin{aligned}
&(f\circ f^{-1})(\vec y)=\vec y,\\
&(f^{-1}\circ f)(\vec x)=\vec x.
\end{aligned}
$$
En fait $f\circ f^{-1}$ et $f^{-1}\circ f$ sont les fonctions *identité* de $Y$ et de $X$ respectivement, qu'on peut noter $I_X$ et $I_Y$ et qui se définissent comme
$$
\begin{aligned}
&I_X:X\rightarrow X,\ &I_X:\vec x\rightarrow \vec x,\\
&I_Y:Y\rightarrow Y,\ &I_Y:\vec y\rightarrow \vec y.
\end{aligned}
$$
On peut réécrire la définition ci-dessus comme
$$
\begin{aligned}
&(f\circ f^{-1})=I_Y,\\
&(f^{-1}\circ f)=I_X,
\end{aligned}
$$
ce qui revient à dire que composer $f$ et $f^{-1}$ nous donne l'identité.

En fait on peut montrer que si $f$ possède une inverse $f^{-1}$, alors cette fonction inverse est unique.

Cette démonstration se fait *par l'absurde*. On commence par supposer qu'on a deux fonctions inverses de $f$. Nous les notons $g$ et $h$. Ces deux fonctions sont définies comme
$$
\begin{aligned}
&g:Y\rightarrow X,\ &g\circ f=I_X,\ f\circ g=I_Y,\\
&h:Y\rightarrow X,\ &h\circ f=I_X,\ f\circ h=I_Y.
\end{aligned}
$$
Les deux fonctions $g$ et $h$ satisfont la définition que nous avons écrite plus haut.

Par définition de $I_X$, on peut réécrire $g$ comme
$$
g=I_X\circ g.\nonumber
$$
A présent en utilisant la définition de $h$, on peut réécrire $I_X=h\circ f$ et cette équation devient
$$
g=I_X\circ g=(h\circ f)\circ g=h\circ (f\circ g)=h\circ I_Y=h.
$$
On a donc bien que $g=h$ et que donc la fonction inverse est bien unique.

Si une fonction, $f$, est inversible, alors on peut encore montrer que l'équation
$$
f(\vec x)=\vec y,\nonumber
$$
possède une unique solution. Graphiquement cela peut se représenter comme sur la @fig:unique_inv, où on voit que la situation du bas de l'image représente une solution unique à l'équation $f(\vec x)=\vec y$, alors que celle du haut nous donne deux solutions à l'équation. En fait on peut même calculer la solution de cette équation en appliquant $f^{-1}$ des deux côtés et on obtient
$$
\begin{aligned}
f^{-1}(f(\vec x))=f^{-1}(\vec y),\\
\vec x=f^{-1}(\vec y).
\end{aligned}
$$

![Le point noir est relié à l'unique point magenta et donc on aurait une unique solution à l'équation $f(\vec x)=\vec y$. En revanche les points bleu et rouge ont tous les deux la même image. Il y aurait donc deux solutions à l'équation $f(\vec x)=\vec y$ dans ce cas là.](figs/unique_inv.png){#fig:unique_inv width=50%}

De façon réciproque, on peut montrer, que si l'équation
$$
f(\vec x)=\vec y,\nonumber
$$
possède une solution unique, alors $f$ possède une fonction inverse, $f^{-1}$.

De ces deux propriétés, on voit que l'existence d'une fonction inverse à la fonction $f$ est équivalent à avoir une solution unique à l'équation $f(\vec x)=\vec y$.

---

Question +.#

Si on a que la fonction $f$ est définie de $\real^m$ dans $\real^n$ quelle doit être la relation entre $m$ et $n$ pour que $f$ puisse avoir une fonction inverse?

---

Nous avons vu la notion d'inverse d'une application et les conditions pour qu'une telle fonction inverse existe. Voyons à présent ce que cela signifie pour les applications linéaires.

Soit $f$ une application linéaire qui possède une fonction inverse $f^{-1}$
$$
\begin{aligned}
f:\real^n\rightarrow \real^n,\\
f^{-1}:\real^n\rightarrow \real^n,
\end{aligned}
$$
avec $n\in\natural$. On peut montrer que $f^{-1}$ est également une fonction linéaire. Pour ce faire il faut satisfaire les deux conditions de la linéarité
$$
\begin{aligned}
f^{-1}(\vec x+\vec y)&=f^{-1}(\vec x)+f^{-1}(\vec y),\\
\lambda f^{-1}(\vec x)&=f^{-1}(\lambda \vec x),
\end{aligned}
$$
si $\vec x,\vec y\in \real^n$ et $\lambda\in\real$.

Commençons par démontrer la première propriété. D'après la définition de la fonction inverse, on peut écrire
$$
\begin{aligned}
f(f^{-1}(\vec x+\vec y))&=\vec x+\vec y,\\
&=f(f^{-1}(\vec x))+f(f^{-1}(\vec y)),\\
&=f(f^{-1}(\vec x)+f^{-1}(\vec y)),
\end{aligned}
$$
où dans la dernière ligne, nous avons utilisé que $f$ est une application linéaire.
Si à présent nous appliquons $f^{-1}$ des deux côtés de cette équation, nous obtenons
$$
\begin{aligned}
f^{-1}(f(f^{-1}(\vec x+\vec y)))&=f^{-1}(f(f^{-1}(\vec x)+f^{-1}(\vec y))),\\
f^{-1}(\vec x+\vec y)&=f^{-1}(\vec x)+f^{-1}(\vec y),
\end{aligned}
$$
où nous avons utilisé que qu'on peut appliquer les fonctions dans l'ordre que nous voulons et utilisé la définition de $f^{-1}$
$$
f^{-1} \circ (f \circ f^{-1})=(f^{-1} \circ f) \circ f^{-1}=I_n\circ f^{-1}=f^{-1}.
$$
D'une façon très similaire, nous pouvons démontrer que la deuxième propriété des applications linéaires.
De la définition de la fonction inverse on peut écrire
\begin{align}
\lambda\vec x=f(f^{-1}(\lambda \vec x))&=\lambda f(f^{-1}(\vec x)),\nonumber\\
&=f(\lambda f^{-1}(\vec x)),
\end{align}
où dans la seconde égalité nous avons utilisé que $f$ est une application linéaire.
En appliquant $f^{-1}$ des deux côté de cette équation, il vient
$$
f^{-1}(\lambda \vec x)=\lambda f^{-1}(\vec x).
$$
Ce qui démontre la seconde propriété des applications linéaires.

### La matrice inverse d'une application linéaire

Nous venons de montrer que la fonction inverse d'une application linéaire est elle-même linéaire.
Nous avons également vu plus tôt dans le cours, que toute application linéaire peut se représenter à l'aide d'une
matrice. Nous avons noté $\mat{F}\in M_{n,n}(\real)$ la matrice de l'application linéaire $f:\real^n\rightarrow\real^n$. De façon similaire, nous noterons
$\mat{F}^{-1}\in M_{n,n}(\real)$ la matrice de l'inverse de l'allication linéaire $f^{-1}:\real^n\rightarrow\real^n$.

Du lien matrice-application linéaire nous pouvons écrire
$$
f(\vec x)= \mat{F}\cdot\vec x.
$$
De façon similaire, on peut donc également écrire
\begin{align}
f^{-1}(f(\vec x))&= \mat{F}^{-1}\cdot\mat{F}\cdot\vec x,\nonumber\\
\vec x&= \mat{F}^{-1}\cdot\mat{F}\cdot\vec x.
\end{align}
De cette dernière relation on en déduit que
$$
\mat{I}_n=\mat{F}\cdot\mat{F}^{-1}.
$$

La matrice inverse, $\mat{F}^{-1}$, peut se calculer à partir de l'application inverse, $f^{-1}$, comme
$$
\mat{F}^{-1}=\left(f^{-1}(\vec e_1)\ f^{-1}(\vec e_2)\ \cdots f^{-1}(\vec e_n)\right).
$$

---

Illustration +.#

Pour reprendre l'exemple de la rotation, où $\mat{R}$, est donnée par
$$\mat{R}=\begin{pmatrix}
		 0 & 1\\
		-1 & 0
\end{pmatrix},
$$
et la fonction linéaire est donnée par
\begin{align*}
&R:\real^2\rightarrow\real^2,\\
&R:\vectwo{x_1}{x_2}\rightarrow\vectwo{x_2}{-x_1}.
\end{align*}
On peut trouver que $R^{-1}$ la rotation inverse est donnée par
\begin{align*}
&R^{-1}:\real^2\rightarrow\real^2,\\
&R^{-1}:\vectwo{x_1}{x_2}\rightarrow\vectwo{-x_2}{x_1}.
\end{align*}
On vérifie aisément que
$$
R^{-1}\left(R(\vec x)\right)=\vec x.
$$
On peut en déduire que $\mat{R}^{-1}$ est donnée par
$$
\mat{R}^{-1}=\begin{pmatrix}
		 0 & -1\\
		1 & 0
\end{pmatrix}.
$$
Finalement, on peut constater également que
$$
\mat{R}^{-1}\cdot(\mat{R}\cdot\vec x)=\vec x.
$$

---

### Le produit matice-matrice

Un peu plus haut, nous avons déduit que le produit $\mat{F}\cdot \mat{F}^{-1}$ devait être la matrice identité.
On a pourtant pas encore définit le produit matrice-matrice formellement.
Soient les trois matrices $\mat{A}\in M_{m,k}(\real)$, $\mat{B}\in M_{k,n}(\real)$, et $\mat{C}\in M_{m,n}(\real)$,
le produit matrice-matrice
$$
\mat{C}=\mat{A}\cdot\mat{B},
$$
est défini comme
$$
\{\mat{C}\}_{ij}=\{\mat{A}\cdot\mat{B}\}_{ij}=\sum_{l=1}^kA_{il}B_{lj}.
$$

---

Illustration +.#

Soient les matrices de rotation $\mat{R}$ et $\mat{R}^{-1}$
$$
\mat{R}=\begin{pmatrix}
		 0 & -1\\
		 1 &  0
\end{pmatrix}, \quad
\mat{R}^{-1}=\begin{pmatrix}
		 0 & 1\\
		-1 & 0
\end{pmatrix}.
$$
Le produit $\mat{R}^{-1}\cdot \mat{R}$ est donné par
$$
\mat{R}^{-1}\cdot\mat{R}=\begin{pmatrix}
		 R_{11}R^{-1}_{11}+R_{12}R^{-1}_{21} & R_{11}R^{-1}_{12}+R_{12}R^{-1}_{22} \\
		 R_{21}R^{-1}_{11}+R_{22}R^{-1}_{21} & R_{21}R^{-1}_{12}+R_{22}R^{-1}_{22}
\end{pmatrix}
=\begin{pmatrix}
		 1 & 0 \\
		 0 & 1
\end{pmatrix}=\mat{I}_2.
$$

---

On constate donc que le produit matrice-vecteur n'est rien d'autre qu'un cas particulier du produit matrice-matrice. En reprenant les notations ci-dessus, cela reviendrait à avoir $n=1$: $\mat{B}$ deviendrait un vecteur colonne et $\mat{C}$ également.

Comme pour le produit matrice-vecteur, le produit matrice-matrice n'est pas commutatif en général
\begin{equation}
\mat{A}\cdot\mat{B}\neq\mat{B}\cdot\mat{A}.
\end{equation}
D'une part il se peut que les dimensions des matrices ne soient pas compatibles.
En effet, comme $\mat{A}\in M_{m,k}(\real)$ et $\mat{B}\in M_{k,n}(\real)$, pour que les dimensions soient compatibles pour le
produit $\mat{B}\cdot\mat{A}$, il est nécessaire que $m$ et $n$ ce qui n'est pas garanti dans ce cas.

De plus, même si les dimensions sont compatibles, ce qui revient à dire que $\mat{A}$ et $\mat{B}$ sont des matrices carrées ($m=n$),
le produit de $\mat{A}$ avec $\mat{B}$ n'est pas commutatif en général. En effet, le produit $\mat{D}=\mat{B}\cdot\mat{A}$ s'écrit
\begin{equation}
D_{ij}=\sum_{l=1}^kB_{il}\cdot A_{lj}.
\end{equation}

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> A=[[1,2,3],[4,5,6],[7,8,9]]
>>> B=[[1,-2,3],[-4,5,6],[-7,-8,9]]
>>> C=[[0,0,0],[0,0,0],[0,0,0]]
>>>  for i in range(3): # loop syntax for matrix-matrix mult multiplication
...  	for j in range(3):
...  		for k in range(3):
...     		C[i][j] += A[i][k]*B[k][j]
...
>>> C
[[-28, -16, 42], [-58, -31, 96], [-88, -46, 150]]
>>> import numpy as np
>>> A=np.matrix([[1,2,3],[4,5,6],[7,8,9]])
>>> B=np.matrix([[1,-2,3],[-4,5,6],[-7,-8,9]])
>>> A.dot(B)
matrix([[-28, -16,  42],
        [-58, -31,  96],
        [-88, -46, 150]])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Faisons un exemple, avec deux matrices $2\times 2$
\begin{equation}
\mat{A}=\mattwo{a_{11}}{a_{12}}{a_{21}}{a_{22}},\quad
\mat{B}=\mattwo{b_{11}}{b_{12}}{b_{21}}{b_{22}},
\end{equation}
dont le produit sera donné par
\begin{equation}
\mat{A}\cdot\mat{B}=\mattwo{a_{11}b_{11}+a_{12}b_{21}}{a_{11}b_{12}+a_{12}b_{22}}{a_{21}b_{11}+a_{22}b_{21}}{a_{21}b_{12}+a_{22}b_{22}},
\end{equation}
et à l'inverse
\begin{equation}
\mat{B}\cdot\mat{A}=\mattwo{b_{11}a_{11}+b_{12}a_{21}}{b_{11}a_{12}+b_{12}a_{22}}{b_{21}a_{11}+b_{22}a_{21}}{b_{21}a_{12}+b_{22}a_{22}}.
\end{equation}
Pour que les deux résultats soient égaux, on devrait avoir
\begin{align}
a_{11}b_{11}+a_{12}b_{21}&=b_{11}a_{11}+b_{12}a_{21},\\
a_{11}b_{12}+a_{12}b_{22}&=b_{11}a_{12}+b_{12}a_{22},\\
a_{21}b_{11}+a_{22}b_{21}&=b_{21}a_{11}+b_{22}a_{21},\\
a_{21}b_{12}+a_{22}b_{22}&=b_{21}a_{12}+b_{22}a_{22}.
\end{align}

---

Exercice (Produit des transposées) +.#

Soit $\mat{A}^\mathrm{T}$ la matrice transposée de la matrice $\mat{A}$, telle que
\begin{equation}
\{\mat{A}^\mathrm{T}\}_{ij}=A_{ji},
\end{equation}
et $\mat{B}^\mathrm{T}$ la matrice transposée de la matrice $\mat{B}$. Montrer que si $\mat{C}=\mat{A}\cdot\mat{B}$, alors
\begin{equation}
\mat{C}^\mathrm{T}=\mat{B}^\mathrm{T}\cdot\mat{A}^\mathrm{T}.
\end{equation}
En déduire une propriété que doivent avoir les matrice pour que leur produit soit commutatif.

---

### Une méthode pour déterminer l'inverse d'une matrice

L'idée ici est de décrire une méthode (un algorithme) pour
calculer l'inverse d'une matrice. Pour décrire cette
procédure il est plus simple de choisir un exemple. Prenons
donc une matrice $\mat{A}\in M_{3,3}(\real)$, telle que
$$
\mat{A}=
	\begin{pmatrix} 1 & -1 & 1 \\ -1 & 2 & -2 \\ 1 & 1 & -2
	\end{pmatrix}
$$
Nous allons à présent effectuer des combinaions linéaires entre les lignes de cette matrice. Dans un premier lieu, nous allon garder la première ligne la même et remplacer la deuxième ligne par la somme entre la première et la deuxième ligne de cette matrice
$$
\mat{A}=\begin{pmatrix} 1 & -1 & 1 \\ -1 & 2 & -2 \\ 1 & 1 & -2
	\end{pmatrix}\rightarrow
\begin{pmatrix} 1 & -1 & 1 \\ 0 & 1 & -1 \\ 0 & -2 & 3
	\end{pmatrix}=\mat{B}.
$$
De cette façon, nous obtenons une nouvelle matrice, $\mat{B}$, dont la première colonne est donnée par le vecteur $(1,0,0)^\mathrm{T}$. La modification de cette matrice est une application linéaire. En fait, nous avons pris les colonnes de la matrice $\mat{A}$, respectivement $\vec a_1$, $\vec a_2$, et $\vec a_3$ et leur avons appliqué la transformation $f_1:\real^3\rightarrow\real^3$
$$
f_1:\vecthree{x_1}{x_2}{x_3}\rightarrow \vecthree{x_1}{x_1+x_2}{x_1-x_3}.
$$
On en déduit que
$$
\mat{B}=\left(f_1(\vec a_1)\ f_1(\vec a_2)\ f_1(\vec a_3)\right)
$$
Cette application linéaire peut également s'écrire sous la forme d'une matrice $\mat{F_1}$ qui se calcule comme
$$
\mat{F_1}=\left(f_1(\vec e_1)\ f_1(\vec e_2)\ f_1(\vec e_3)\right)=\begin{pmatrix} 1 & 0 & 0 \\ 1 & 1 & 0 \\ 1 & 0 & -1
	\end{pmatrix}.
$$
La matrice $\mat{B}$ peut également se réécrire à l'aide de la matrice $\mat{F_1}$
$$
\mat{B}=\mat{F_1}\cdot\mat{A}.
$$
Nous allons à présent transformer la matrice $\mat{B}$. Nous allons garder la deuxième ligne inchangée. La première ligne sera la somme de la première et de la deuxième ligne. La troisième deviendra la troisième ligne multipliée par deux ajoutée à la deuxième. Il vient
$$
\mat{B}=\begin{pmatrix} 1 & -1 & 1 \\ 0 & 1 & -1 \\ 0 & -2 & 3
	\end{pmatrix}\rightarrow
\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & 0 & 1
	\end{pmatrix}=\mat{C}.
$$
En répétant les mêmes arguments que précédemment, on a que la matrice $\mat{C}$ est obtenue en appliquant la fonction $f_2$
aux colonnes de $\mat{B}$, avec $f_2$ définie comme
$$
f_2:\vecthree{x_1}{x_2}{x_3}\rightarrow \vecthree{x_1+x_2}{x_2}{2x_2+x_3}.
$$
Cette application linéaire se représente sous la forme de la matrice $\mat{F_2}$ comme
$$
\mat{F_2}=\left(f_2(\vec e_1)\ f_2(\vec e_2)\ f_2(\vec e_3\right)=
\begin{pmatrix} 1 & 1 & 0 \\ 0 & 1 & 0 \\ 0 & 2 & 1
\end{pmatrix}.
$$
On peut donc écrire $\mat{C}$ comme
$$
\mat{C}=\mat{F_2}\cdot\mat{B}=\mat{F_2}\cdot\mat{F_1}\cdot\mat{A},
$$
ou encore
$$
\mat{C}=\mat{G}\cdot\mat{A}\mbox{, où }\mat{G}=\mat{F_2}\cdot\mat{F_1}=
\begin{pmatrix} 2 &  1 &  0\\
				1 &  1 &  0\\
				3 &  2 & -1
\end{pmatrix}
$$
Finalement, on peut effectuer une dernière transformation sur la matrice $\mat{C}$ où on garde constante la troisième ligne. Ensuite, on remplace la deuxième ligne par la somme entre la deuxième et la troisième ligne et on garde la première ligne constante.
$$
\mat{C}=\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & 0 & 1
	\end{pmatrix}\rightarrow
\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1
\end{pmatrix}=\mat{D}=\mat{I}_3.
$$
On voit que suite à cette dernière transformation, nous avons obtenu la matrice identité $\mat{I}_3$.
La dernière transformation linéaire $f_3$ est
$$
f_3:\vecthree{x_1}{x_2}{x_3}\rightarrow \vecthree{x_1}{x_2+x_3}{x_3}.
$$
Puis ont a également la matrice de la transformation linéaire $\mat{F_3}$ qui est donnée par
$$
\mat{F_3}=\left(f_3(\vec e_1)\ f_3(\vec e_2)\ f_3(\vec e_3\right)=
\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & 0 & 1
\end{pmatrix}.
$$
On a finalement écrit la matrice identité $\mat{I}_3$ comme le produit de matrices suivant
$$
\mat{I}_3=\mat{F_3}\cdot\mat{C}=\mat{F_3}\cdot\mat{F_2}\cdot\mat{F_1}\cdot\mat{A}.
$$
En renommant ce produit de trois matrices comme $\mat{H}$
$$
\mat{H}\equiv\mat{F_3}\cdot\mat{F_2}\cdot\mat{F_1}=
\begin{pmatrix}
2 & 1 &  0\\
4 & 3 & -1\\
3 & 2 & -1
\end{pmatrix}
$$
on a que
$$
\mat{I}_3=\mat{H}\cdot\mat{A}.
$$
La matrice $\mat{H}$ qui a cette proptiété n'est autre que la matrice inverse, $\mat{A}^{-1}$. On voit donc que la matrice inverse n'est autre que
$$
\mat{A}^{-1}=\mat{H}=
\begin{pmatrix}
2 & 1 &  0\\
4 & 3 & -1\\
3 & 2 & -1
\end{pmatrix}.
$$
On vérifie aisément que
$$
\begin{pmatrix}
2 & 1 &  0\\
4 & 3 & -1\\
3 & 2 & -1
\end{pmatrix}\cdot
\begin{pmatrix} 1 & -1 & 1 \\ -1 & 2 & -2 \\ 1 & 1 & -2
\end{pmatrix}
=
\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1
\end{pmatrix}
$$

Nous avons dérivé une façon de calculer l'inverse d'une matrice. Néanmoins cette méthode est encore un peu compliquée à mettre en oeuvre. En effet, nous devons effectuer des combinaisons linéaires sur des lignes de notre matrice, puis déterminer les applications linéaires auquelles elles correspondent, pour finalement déterminer quelles sont les matrices correspondantes. Il y a un moyen de généraliser la procédure en utilisant une méthode plus simple. Cette méthode se base sur les propriétés suivantes.

Lorsque nous avons appliqué la première transformation de
lignes sur la matrice $\mat{A}$, cela a correspondu à
effectuer le produit $\mat{F_1}\cdot\mat{A}$. Si nous
effectuions le même produit sur la matrice $\mat{I}_3$, nous
obtientrions $\mat{F_1}\cdot\mat{A}$. De même si nous
faisions ensuite le produit avec $\mat{F_2}$ puis $\mat{F_3}$,
nous aurions $\mat{F_3}\cdot\mat{F_2}\cdot\mat{F_1}\cdot\mat{A}=\mat{I}_3$. De même sur l'identité, nous aurions $\mat{F_3}\cdot\mat{F_2}\cdot\mat{F_1}\cdot\mat{I}_3=\mat{A}^{-1}$. On constate donc qu'en effctuant les mêmes transformations linéaires que nous avons effectuées sur $\mat{A}$, mais sur $\mat{I}_3$, nous calculons directement l'inverse $\mat{A}^{-1}$.

Afin de se simplifier un peu la vie, il est possible d'utiliser une notation très pratique pour appliquer la méthode que nous venons de voir. Il suffit d'écrire notre matrice $\mat{A}$ à coté de la matrice identité, telle que
$$
\left[\mat{A}|\mat{I}_3\right]=
\left[
	\begin{array}{ccc|ccc}
 		1 & -1 &  1 & 1 & 0 & 0 \cr
	   -1 &  2 & -2 & 0 & 1 & 0 \cr
 		1 &  1 & -2 & 0 & 0 & 1
	\end{array}
\right],
$$
et d'appliquer les transformations linéaires que nous avons écrites plus haut sur chacunes des colonnes de la matrice. Cela fera apparître la matrice identité, $\mat{I}_3$ dans la partie de gauche de la structure ci-dessus et $\mat{A}^{-1}$ dans la partie droite
$$
\left[\mat{I}|\mat{A}^{-1}\right]=
\left[
	\begin{array}{ccc|ccc}
 		1 & 0 & 0 & 2 & 1 &  0  \cr
	    0 & 1 & 0 & 4 & 3 & -1 \cr
 		0 & 0 & 1 & 3 & 2 & -1
	\end{array}
\right].
$$
Cette méthode qui consiste à réduire une matrice matrice diagonale, est connue sous le nom *d'élimination de Gauss(-Jordan)*.

Il est important de noter qu'il n'est pas toujours possible de mettre notre matrice "augmentée" dans la forme que nous venons de décrire: l'identité à droite et l'inverse à gauche. Cela se produit lorsque la matrice $\mat{A}$ *n'est pas* inversible.

---

Illustration +.#

Si nous appliquons l'élimination de Gauss à la matrice 
\begin{equation}
\mat{A}=\mattwo{-1}{-2}{2}{4},
\end{equation} 
on obtient
\begin{equation}
\left[\mat{A}|\mat{I}_2\right]=
\left[
	\begin{array}{cc|cc}
 		-1 & -2 & 1 & 0 \cr
	     2 &  4 & 0 & 1 \cr
	\end{array}
\right]\rightarrow
\left[
	\begin{array}{cc|cc}
 		-1 & -2 & 1 & 0 \cr
	     0 &  0 & 2 & 1 \cr
	\end{array}
\right].
\end{equation}
On constate qu'on ne peut pas mettre la partie de gauche de la matrice augmentée sous la forme de l'identité.
La matrice $\mat{A}$ n'est donc pas inversible. En fait, cela est dû au fait que la deuxième ligne de la matrice est 
obtenue en multipliant la première ligne par $-2$ (les deux lignes ne sont pas linéairement indépendantes).

---

---

Exercice +.#

Utiliser la méthode de Gauss-Jordan pour calculer l'inverse de la matrice $\mat{A}$
$$
\mat{A}=
\begin{pmatrix} 1 & -1 & 1 \\ -1 & 2 & -2 \\ 1 & 1 & -2
\end{pmatrix}.
$$

---

### L'inverse d'une matrice $2\times2$ et son déterminant

Le but de cette sous-section est de déterminer une formule complètement générale pour déterminer l'inverse d'une matrice $2\times2$. Pour ce faire, nous allons prendre une matrice $\mat{A}$
de taille $2\times2$ complètement générale et la mettre sous la forme de la matrice augmentée de la sous-section précédente. Puis nous allons appliquer notre algorithme pour calculer son inverse
$$
\mat{M}=\left[
	\begin{array}{cc|cc}
 		a_{11} & a_{12} & 1 & 0  \cr
	    a_{21} & a_{22} & 0 & 1
	\end{array}
\right].
$$
Il est bon de rappeler ici que nous voulons mettre la partie gauche de cettematrice sous la forme de la matrice identité: nous voudrions qu'il y ait un "$0$" à la place de $a_{12}$ et $a_{21}$, et un "$1$" à la place de $a_{11}$ et $a_{22}$. Commençons donc nore procédure.

Appliquons d'abord la fonction linéaire $f_1$
$$
f_1:\vectwo{x_1}{x_2}\rightarrow\vectwo{x_1}{a_{11}x_2-a_{21}x_1},
$$
à toutes les colonnes de notre matrice augmentée, $\mat{M}$, et on obtient
$$
\mat{M}_1=\left[
	\begin{array}{cc|cc}
 		a_{11} & a_{12}                    & 1       & 0  \cr
	    0      & a_{11}a_{22}-a_{21}a_{12} & -a_{21} & a_{11}
	\end{array}
\right].
$$
A présent, nous allons garder la deuxième ligne intacte et appliquer la fonction $f_2$ suivante dont le but est de mettre un "$0$" à la place du $a_{12}$
$$
f_2:\vectwo{x_1}{x_2}\rightarrow\vectwo{(a_{11}a_{22}-a_{21}a_{12})x_1-a_{12}x_2}{x_2}.
$$
Il vient pour la matrice augmentée
$$
\mat{M}_2=\left[
	\begin{array}{cc|cc}
 		(a_{11}a_{22}-a_{21}a_{12})a_{11} & 0                         & a_{11}a_{22}       & -a_{11}a_{12}  \cr
	    0                         & a_{11}a_{22}-a_{21}a_{12} & -a_{21} & a_{11}
	\end{array}
\right].
$$
A présent, nous voulons mettre des $"1"$ dans la diagonale de la matrice $\mat{M}_2$. Cela se fait au travers de l'application $f_3$
$$
f_3:\vectwo{x_1}{x_2}\rightarrow\vectwo{\frac{x_1}{(a_{11}a_{22}-a_{21}a_{12})a_{11}}}{\frac{x_2}{a_{11}a_{22}-a_{21}a_{12}}}.
$$
On obtient finalement
$$
\mat{M}_3=\left[
	\begin{array}{cc|cc}
 		1 & 0 & \frac{a_{22}}{a_{11}a_{22}-a_{21}a_{12}} & -\frac{a_{12}}{a_{11}a_{22}-a_{21}a_{12}}  \cr
	    0 & 1 & -\frac{a_{21}}{a_{11}a_{22}-a_{21}a_{12}} & \frac{a_{11}}{a_{11}a_{22}-a_{21}a_{12}}
	\end{array}
\right].
$$
Sur la droite de $\mat{M}_3$, nous avons la matrice inverse $\mat{A}^{-1}$. Nous pouvons réécrire cette matrice sous une forme un peu plus agréable. En définissant, le *déterminant* de $\mat{A}$, $\det(\mat{A})$, comme
$$
\det(\mat{A})=\left|\mat{A}\right|=
\begin{vmatrix}
a_{11} & a_{12}\\
a_{21} & a_{22}
\end{vmatrix}
=a_{11}a_{22}-a_{21}a_{12},
$$
on a
$$
\mat{A}^{-1}=\frac{1}{\det(\mat{A})}
\begin{pmatrix}
a_{22} & a_{12} \\
a_{21} & a_{11}
\end{pmatrix}.
$$
On constate que la matrice $\mat{A}$ est inversible, à moins que son déterminant soit nul. On a donc un moyen très simple de déterminer si oui ou non on peut calculer la matrice inverse d'une application linéaire, sans avoir besoin de vraiment faire tout le calcul.

---

Exercice (Matrice inverse d'une matrice $2\times2$) +.#

Calculer la matrice inverse, $\mat{A}^{-1}$, de
$$
\mat{A}=
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}.
$$
Puis calculer le déterminant de $\mat{A}^{-1}$.

---

### Le déterminant d'une matrice $n\times n$

La formule que nous venons de dériver pour une matrice $2\times2$ ne se généralise pas facilement pour une matrice $n\times n$. Afin de voir comment cela se passe dans le cas général, commençons par le calcul du déterminant d'une matrice $\mat{A}\in M_{3,3}(\real)$
$$
\mat{A}=\begin{pmatrix}
\color{red}{a_{11}} & \color{green}{a_{12}} & \color{blue}{a_{13}} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{pmatrix}.
$$
Le calcul du déterminant se calcul de façon récursive. On choisit les 3 éléments de la première ligne (en rouge, vert et bleu ci-dessus). Puis le déterminant se calcule comme suit
$$
\det(\mat{A})=
{\color{red}{a_{11}}}
\underbrace{\left|\begin{array}{cc}
a_{22} & a_{23}\\
a_{32} & a_{33}
\end{array}\right|}_{\mat{A}_{11}}-
{\color{green}{a_{12}}}
\underbrace{\left|\begin{array}{cc}
a_{21} & a_{23}\\
a_{31} & a_{33}
\end{array}\right|}_{\mat{A}_{12}}+
{\color{blue}{a_{13}}}
\underbrace{\left|\begin{array}{cc}
a_{21} & a_{22}\\
a_{31} & a_{32}
\end{array}\right|}_{\mat{A}_{13}},
$${#eq:det33}
où on multiplie chacun des termes de la première ligne de $\mat{A}$, par le déterminant de la sous-matrice de $\mat{A}$ où on a enlevé la ligne et la colonne respective du premier élément de chaque colonne.
Dans ce cas-là nous savons calculer les déterminants de sous-matrices, car ce sont des matrices $2\times 2$ (voir la sous-section précédente).

Afin d'expliquer un peu plus en détail comment déterminer les sous-matrices à utiliser, on trouve ci-dessous pour chacune des sous.matrices, la colonne et la ligne à enlever de la matrice $\mat{A}$ selon la couleur du premier élément de la colonne
$$
\mat{A}_{11}=\begin{pmatrix}
\color{red}{a_{11}} & \color{red}{a_{12}} & \color{red}{a_{13}} \\
\color{red}{a_{21}} & a_{22} & a_{23} \\
\color{red}{a_{31}} & a_{32} & a_{33}
\end{pmatrix},\ 
\mat{A}_{12}=\begin{pmatrix}
\color{green}{a_{11}} & \color{green}{a_{12}} & \color{green}{a_{13}} \\
a_{21} & \color{green}{a_{22}} & a_{23} \\
a_{31} & \color{green}{a_{32}} & a_{33}
\end{pmatrix},\ 
\mat{A}_{13}=\begin{pmatrix}
\color{blue}{a_{11}} & \color{blue}{a_{12}} & \color{blue}{a_{13}} \\
a_{21} & a_{22} & \color{blue}{a_{23}} \\
a_{31} & a_{32} & \color{blue}{a_{33}}
\end{pmatrix}.
$$

---

Exemple (Déterminant d'une matrice $3\times 3$) +.#

Afin d'appliquer cette formule faisons le calcul du déterminant de la matrice
\begin{equation}
\mat{A}=
\begin{pmatrix} 1 & 0 & 1 \\ -1 & 1 & 0 \\ 0 & 0 & 1
\end{pmatrix}.
\end{equation}
En reprenant notre la formule de l'@eq:det33, on obtient
\begin{align}
\det(\mat{A})&=
1\cdot\left|\begin{array}{cc}
1 & 0\\
0 & 1
\end{array}\right|
-0\cdot\left|\begin{array}{cc}
-1 & 0\\
0 & 1
\end{array}\right|
+1\left|\begin{array}{cc}
-1 & 1\\
0 & 0
\end{array}\right|,\nonumber\\
&=1\cdot 1-0\cdot -1 + 1\cdot 0=1.
\end{align}
On as donc que $\det(\mat{A})\neq 0$ et donc que la matrice est inversible.

---

---

Exercice (Déterminant de matrices $3\times 3$) +.#

Calculer le déterminant de la matrice
$$
\mat{A}=
\begin{pmatrix} 1 & -1 & 1 \\ -1 & 2 & -2 \\ 1 & 1 & -2
\end{pmatrix},
$$
et de la matrice
$$
\mat{B}=
\begin{pmatrix} 1 & -1 & 1 \\ 2 & -2 & 2 \\ 1 & 1 & -2
\end{pmatrix}.
$$
Ces matrices sont-elles inversibles?

---

Généralisons à présent ce calcul à des matrices de tailles arbitraires, $n\times n$.
Nous voulons donc calculer
\begin{equation}
\det(\mat{A})=\left|\begin{array}{cccc}
a_{11} & a_{12} & \dots & a_{1n}\\
a_{21} & a_{22} & \dots & a_{2n}\\
\vdots & \vdots & \ddots & \vdots\\
a_{n1} & a_{n2} & \dots & a_{nn}
\end{array}\right|.
\end{equation}
Avant de généraliser la formule de l'@eq:det33, il nous faut définir la sous matrice 
$\mat{A}_{ij}$ qui est la sous-matrice de dimensions $n-1\times n-1$ de $\mat{A}$ à laquelle nous avons enlevé la $i$-ème ligne et la $j$-ème colonne. On aurait donc
\begin{equation}
\mat{A}_{ij}=
\begin{pmatrix} 
a_{11} & \dots & a_{1,j-1} & a_{1,j+1} & \dots & a_{1n}\\
\vdots & \ddots & a_{2,j-1} & a_{2,j+1} & \dots & a_{2n}\\
a_{i-1,1} & \dots & a_{i-1,j-1} & a_{i-1,j+1} & \dots & a_{i-1,n}\\
a_{i+1,1} & \dots & a_{i+1,j-1} & a_{i+1,j+1} & \dots & a_{i+1,n}\\
\vdots & \vdots & \vdots & \ddots & \ddots & \vdots\\
a_{n,1} & \dots & a_{n,j-1} & a_{n,j+1} & \dots & a_{nn}\\
\end{pmatrix}.
\end{equation}
En utilisant cette notation, nous pouvons réécrire le déterminant d'une matrice $3\times 3$ (voir l'@eq:det33) comme
\begin{equation}
\det(\mat{A})=
a_{11}\cdot \det\left(\mat{A}^{(2)}_{11}\right)
-a_{12}\cdot \det\left(\mat{A}^{(2)}_{12}\right)
+a_{13}\cdot \det\left(\mat{A}^{(2)}_{13}\right).
\end{equation}
Avec cette façon d'écrire le déterminant, nous pouvons immédiatement généraliser à une matrice de taille $n\times n$. On a
\begin{align}
\det(\mat{A})&=
a_{11}\cdot \det\left(\mat{A}_{11}\right)
-a_{12}\cdot \det\left(\mat{A}_{12}\right)
+a_{13}\cdot \det\left(\mat{A}_{13}\right)\nonumber\\
&\quad+\cdots
+(-1)^{(n+1)}a_{1n}\cdot \det\left(\mat{A}_{1n}\right).
\end{align}
Il suffit donc ensuite de calculer les déterminants des matrices 
$\mat{A}_{1j}$ de façon récursive jusqu'à ce qu'on ait des matrices $2\times 2$
dont nous connaissons le déterminant.

Ici, nous avons considéré uniquement la première ligne comme référence pour calculer 
le déterminant. En fait la même opération peut se faire selon n'importe quelle ligne ou colonne. On peut écrire le calcul du déterminant selon la $i$-ème ligne comme
\begin{equation}
\det(\mat{A})=\sum_{j=1}^n(-1)^{i+j}a_{ij}\cdot \det\left(\mat{A}_{ij}\right),
\end{equation}
où il faut faire attention au signe de chaque terme donné par $(-1)^{i+j}$ qui est en fait une structure en échiquier dans la matrice. Pour une matrice $4\times 4$ cela donnerait 
\begin{equation}
(-1)^{i+j}=\left(\begin{array}{cccc}
+ & - & + & -\\
- & + & - & +\\
+ & - & + & -\\
- & + & - & +
\end{array}\right).
\end{equation}

En python avec la librairie NumPy et Scipy, on peut calculer un déterminant de la 
façon suivante

~~~{.python .numberLines}

>>> import numpy as np
>>> a = np.array([[1, 2], [3, 4]])
>>> np.linalg.det(a)
-2.0000000000000004
>>> a = np.array([[1, 2, 3], [3, 4, 6], [7, 8, 9]])
>>> np.linalg.det(a)
6.0
>>> a = np.array([[1, 2, 3, -1], [3, 4, 6, 0], [7, 8, 9, -1], [2, 3, 1, -2]])
>>> np.linalg.det(a)
12.000000000000005

~~~

### La co-matrice d'une application linéaire

Dans la sous-section (2.3.12), nous avons vu une méthode pour calculer l'inverse d'une matrice. Cette méthode est équivalente à une généralisation mathématique qui permet d'écrire les choses de façon plus succincte. Pour ce faire, il nous faut définir la *comatrice* d'une application linéaire. La comatrice d'une matrice $\mat{A}$ d'une matrice  est notée $\com{A}$ et est définie à l'aide des déterminants des sous-matrices de $\mat{A}$
\begin{equation}
\{\com{A}\}_{ij}=(-1)^{i+j}\cdot \det\left(\mat{A}_{ij}\right).
\end{equation}
Avec cette définition, on peut écrire que l'inverse d'une matrice carrée $\mat{A}$ est donnée par
\begin{equation}
\mat{A}^{-1}=\frac{1}{\det\left(\mat{A}\right)}\cdot \com{A}^\mathrm{T},
\end{equation}
où $\com{A}^\mathrm{T}$ est la comatrice de $\mat{A}$ transposée.

Pour une matrice $3\times 3$ générale, la comatrice d'une matrice $\mat{A}$ générale 
\begin{equation}
\mat{A}=\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{pmatrix},
\end{equation}
s'écrit
\begin{equation*}
\com{A}=\begin{pmatrix}
a_{22}a_{33}-a_{32}a_{23} & -(a_{21}a_{33}-a_{31}a_{23}) & a_{21}a_{32}-a_{31}a_{22} \\
-(a_{12}a_{33}-a_{32}a_{13}) & a_{11}a_{33}-a_{31}a_{13} & -(a_{11}a_{32}-a_{31}a_{12}) \\
a_{12}a_{23}-a_{22}a_{13} & -(a_{11}a_{23}-a_{21}a_{13}) & a_{11}a_{22}-a_{21}a_{12} \\
\end{pmatrix}.
\end{equation*}

---

Exercice (Inverse d'une matrice $3\times 3$ avec la méthode de la comatrice) +.#

Calculer l'inverse de la matrice 
\begin{equation}
\mat{A}=
	\begin{pmatrix} 1 & -1 & 1 \\ -1 & 2 & -2 \\ 1 & 1 & -2
	\end{pmatrix},
\end{equation}
avec la méthode de la comatrice.

---

## Composition d'applications linéaires

Revenons un tout petit peu en arrière à présent et discutons de la composition d'applications linéaires.

Si nous avons deux applications linéaires, $f$ et $g$,
\begin{align}
&f:\real^m\rightarrow\real^n,\\
&g:\real^p\rightarrow\real^m,
\end{align}
Soit $h$, la composition de $f$ avec $g$ s'écrit
\begin{align}
&h:\real^p\rightarrow\real^n,\\
&h(x)=(f\circ g)(\vec x),
\end{align}
ou une autre notation possible serait 
\begin{equation}
h(\vec x)=f(g(\vec x)).
\end{equation}
Il se trouve que la fonction $h$ est elle-même une application linéaire.

---

Exercice (composition d'application linéaire) +.#

Démontrer que la composition de deux applications linéaires est une application linéaire.

---

De ce que nous avons vu dans les sections précédentes, nous savons que n'importe quelle application linéaire 
peut s'écrire comme un produit matrice-vecteur. Dans ce cas, nous aurons que, $f$ peut se représenter avec la matrice $\mat{F}$
\begin{align}
\mat{F}&=\left(f(\vec e_1)\ f(\vec e_2)\ \cdots\ f(\vec e_m)\right),\\
&=\left(\vec f_1\ \vec f_2\ \cdots\ \vec f_m\right),
\end{align}
où $\mat{F}\in M_{m,n}(\real)$. De même $g$ peut se représenter avec la matrice $\mat{G}\in M_{n,p}(\real)$
\begin{align}
\mat{G}&=\left(g(\vec e_1)\ g(\vec e_2)\ \cdots\ g(\vec e_p)\right),\\
&=\left(\vec g_1\ \vec g_2\ \cdots\ \vec g_p\right).
\end{align}
Finalement, nous pouvons également écrire la matrice $\mat{H}$ qui est la représentation matricielle  de la fonction $h$
\begin{equation}
\mat{H}=\left(h(\vec e_1)\ h(\vec e_2)\ \cdots\ h(\vec e_p)\right).
\end{equation}
Mais $h$ peut se représenter comme la composition de $f$ et $g$. On doit donc certainement pourvoir représenter $\mat{H}$ en fonction de $\mat{F}$ et $\mat{G}$.

Si nous définissons 
\begin{equation}
\vec y=\mat{G}\cdot\vec x=g(\vec x),
\end{equation}
avec $\vec x\in\real^p$ et $\vec y\in\real^m$, nous pouvons également calculer \begin{equation}
\mat{F}\cdot \vec y=\mat{F}\cdot(\mat{G}\cdot\vec x)=f(g(\vec x))=h(\vec(x)=\mat{H}\cdot \vec x.
\end{equation}
Comme le produit matriciel est associatif, 
on en déduit donc que la matrice $\mat{H}$ est obtenue 
par
\begin{equation}
\mat{H}=\mat{F}\cdot\mat{G}.
\end{equation}
On voit donc que le produit de deux matrices n'est rien d'autre que la composition
de deux applications linéaires. Il s'agit donc d'appliquer à la suite deux transformations linéaires sur un vecteur. Ainsi, lorsqu'on calcule le produit d'une matrice avec son inverse $\mat{A^{-1}}\cdot\mat{A}$ ($\mat{A}$ et $\mat{A}^{-1}$ sont les matrices correspondant aux applications linéaires $a$ et $a^{-1}$), on effectue d'abord 
la transformation $a$, puis la transformation inverse $a^{-1}$, défaisant avec $a^{-1}$ l'effet de $a$ (tel Pénélope avec sa toile).

## Quelques applications du calcul matriciel

Les matrices sont présentes un peu partout en informatique. Des fois parce qu'elles représentent des applications linéaires, d'autres
uniquement parce qu'elles sont une représentation pratique d'objets. 
Elles sont à la base de tout le traitement du signal (audio, images, ...) numérique. 
Nous allons voir ici deux exemples que nous implanterons aux travaux pratiques.

### L'interpolation bilinéaire

Il est très commun de vouloir rééchantillonner une image (pour effectuer un zoom, une rotation, etc). Prenons donc l'exemple du zoom. Lorsque vous avez une image avec une certaine résolution, vous avez en fait un ensemble de pixels qui ont une certaine couleur. Lorsque vous souhaitez effectuer un agrandissement de l'image, vous allez déplacer les pixels dans certaines directions avec un certain facteur d'agrandissement. Hors les pixels ainsi déplacés laisseront des "trous" dans l'image que vous souhaiteriez reconstituer. La technique la plus simple pour "boucher les trous" est de simplement copier la couleur du pixel le plus proche. Une méthode un peu plus avancée, et aussi beaucoup plus élégante est l'interpolation bilinéaire.

Une image peut se représenter mathématiquement comme une fonction $f$, 
telle que
\begin{equation}
f:\real^2\rightarrow\real,
\end{equation}
on prend un couple de points (un pixel) et on lui associe une couleur[^4] connue.

Lors d'un zoom on effectue une dilatation des vecteurs position des pixels. 
On va donc avoir que sur les points représentant la position des pixels nous n'aurons plus une valeur de couleur associée, mais nous la connaîtrons à la position des vecteurs dilatés (voir la @fig:dilatation). Dans le cas de la @fig:dilatation, avant dilatation nous connaissons les valeur de $f$ sur les positions $(x_1,y_1)$, $(x_2,y_1)$, $(x_1,y_2)$, et $(x_2,y_2)$. Après dilatation, ces valeurs sont connues sur les points $(x_1',y_1')$, $(x_2',y_1')$, $(x_1',y_2')$, et $(x_2',y_2')$. Elles sont en revanche inconnues sur les positions des pixels (qui sont entourés en vert). Il faut donc rééchantillonner l'image. 

![Quatre pixels dont la valeur est connue avant dilatation aux positions 
$(x_1,y_1)$, $(x_2,y_1)$, $(x_1,y_2)$, et $(x_2,y_2)$ (carrés noirs) puis après dilatation aux positions $(x_1',y_1')$, $(x_2',y_1')$, $(x_1',y_2')$, et $(x_2',y_2')$ (carrés rouges). Après dilatation la valeur des pixels aux position 
$(x_1,y_1)$, $(x_2,y_1)$, $(x_1,y_2)$, et $(x_2,y_2)$ est inconnue.](figs/dilatation.png){#fig:dilatation width=40%}

Le problème peut se généraliser de la façon suivante (voir @fig:interp). 
Soit la valeur de la fonction $f$ est connue en 4 points, $(x_1,y_1)$, $(x_2,y_1)$, $(x_1,y_2)$, et $(x_2,y_2)$, on cherche à connaître la valeur de $f$ en un point 
$(x,y)$ avec $x_1\leq x\leq x_2$ et $y_1\leq y\leq y_2$.

![On cherche à connaître la valeur du pixel au point au point $(x,y)$ (carré bleu) quand les valeurs $f(x_1,y_1)$, $f(x_2,y_1)$, $f(x_1,y_2)$, et $f(x_2,y_2)$ sont connues.](figs/interp.png){#fig:interp width=40%}

Pour ce faire on utilise ici *l'interpolation bilinéaire*. Cette interpolation se construit en faisant d'abord passer une droite par les points $(x_1,y_1),(x_2,y_1)$, puis par les points $(x_1,y_2),(x_2,y_2)$. On a donc que la fonction $f$ peut s'approximer comme
\begin{align}
f(x,y_1)&\cong\frac{x_2-x}{x_2-x_1}f(x_1,y_1)+\frac{x-x_1}{x_2-x_1}f(x_2,y_1),\\
f(x,y_2)&\cong\frac{x_2-x}{x_2-x_1}f(x_1,y_2)+\frac{x-x_1}{x_2-x_1}f(x_2,y_2).
\end{align}
Puis il nous reste à approximer par une droite tous les points qui passent entre les points $(x,y_1)$ et $(x,y_2)$. On obtient donc
\begin{equation}
f(x,y)\cong\frac{y_2-y}{y_2-y_1}f(x,y_1)+\frac{y-y_1}{y_2-y_1}f(x,y_2).
\end{equation}
En remplaçant les deux équations ci-dessus dans cette dernière équation et en effectuant beaucoup de calculs, on peut se rendre compte que cette équation se réécrit sous forme matricielle comme
\begin{align}
f(x,y)&\cong\frac{1}{(x_2-x_1)(y_2-y_1)}\cdot\nonumber\\
&\quad\quad\begin{pmatrix}x_2-x & x-x_1 \end{pmatrix}\cdot \mattwo{f(x_1,y_1)}{f(x_1,y_2)}{f(x_2,y_1)}{f(x_2,y_2)}\cdot \vectwo{y_2-y}{y-y_1}.
\end{align}
Avec cette formule, nous pouvons à présent déterminer n'importe quel point se trouvant dans l'intervalle $[x_1;x_2]\times[y_1;y_2]$.

### Les matrices de convolution

Les matrices de convolutions sont particulièrement utiles dans le traitement d'images. On les appelle également noyau ou masque. L'image traitée est obtenue 
en faisant la *convolution* entre la matrice et l'image. Ce genre d'opération
est effectuée tout le temps dans vos téléphones portables pour appliquer des filtres sur vos photos (floutage, vieillissement, ...).

Il existe une grande quantité de noyaux (vous pouvez en trouver des exemple sur la page <https://en.wikipedia.org/wiki/Kernel_(image_processing)>), mais l'opération pour effectuer le traitement de l'image reste toujours la même. 
Une image peut se représenter sous la forme d'une matrice $m\times n$
\begin{equation}
\mat{A}=
\begin{pmatrix} 
a_{11}    & \dots  & a_{1,j-1}   & a_{1,j}   & a_{1,j+1}   & \dots  & a_{1n}\\
\vdots    & \ddots & \vdots      & \ddots    & \vdots      & \ddots & \vdots \\
a_{i-1,1} & \dots  & a_{i-1,j-1} & a_{i-1,j} & a_{i-1,j+1} & \dots  & a_{i-1,n}\\
a_{i,  1} & \dots  & a_{i,j-1}   & a_{i,j}   & a_{i,j+1}   & \dots  & a_{i-1,n}\\
a_{i+1,1} & \dots  & a_{i+1,j-1} & a_{i+1,j} & a_{i+1,j+1} & \dots  & a_{i+1,n}\\
\vdots    & \ddots & \vdots      & \ddots    & \ddots      & \ddots & \vdots \\
a_{m,1}   & \dots  & a_{m,j-1}   & a_{m,j+1} & \dots       & \dots  & a_{mn}\\
\end{pmatrix}.
\end{equation}
Si nous choisissons une matrice de convolution, $\mat{C}$, $3\times 3$ (cela se généralise pour toutes les tailles), de la forme 
\begin{equation}
\mat{C}=\begin{pmatrix}
c_{11} & c_{12} & c_{13} \\
c_{21} & c_{22} & c_{23} \\
c_{31} & c_{32} & c_{33}
\end{pmatrix},
\end{equation}
nous pouvons écrire calculer la transformation de tous les éléments $a_{i,j}$ de la matrice $\mat{A}$, que nous noterons $b_{i,j}$, comme
\begin{align}
b_{i,j}&=\left[\begin{pmatrix}
c_{11} & c_{12} & c_{13} \\
c_{21} & c_{22} & c_{23} \\
c_{31} & c_{32} & c_{33}
\end{pmatrix}\ast
\begin{pmatrix} 
& a_{i-1,j-1} & a_{i-1,j} & a_{i-1,j+1}\\
& a_{i,j-1}   & a_{i,j}   & a_{i,j+1}  \\
& a_{i+1,j-1} & a_{i+1,j} & a_{i+1,j+1}\\
\end{pmatrix}\right]\nonumber\\
&=c_{11}a_{i-1,j-1}+c_{12}a_{i-1,j}+c_{13}a_{i-1,j+1}\nonumber\\
&\quad\quad+c_{21}a_{i,j-1}+c_{22}a_{i,j}+c_{23}a_{i,j+1}\nonumber\\
&\quad\quad+c_{31}a_{i+1,j-1}+c_{32}a_{i+1,j}+c_{33}a_{i+1,j+1}.
\end{align}
On voit donc que la convolution est une combinaison linéaire de tous les éléments d'une sous matrice de $\mat{A}$ dont les poids sont donnés
par la matrice de convolution. La somme des éléments de la matrice de convolution est en général de $1$ (on dit qu'elle est normalisée à 1) 
pour éviter de modifier la luminosité des pixels.

---

Illustration (Floutage) +.#

Si la matrice de convolution est donnée par
\begin{equation}
\mat{C}=\frac{1}{9}\begin{pmatrix}
1 & 1 & 1 \\
1 & 1 & 1 \\
1 & 1 & 1
\end{pmatrix},
\end{equation}
on voit que son effet est de moyenner la valeur de chaque pixel avec tous ces voisins
\begin{align}
b_{ij}&=\frac{1}{9}(a_{i-1,j-1}+a_{i-1,j}+a_{i-1,j+1}+a_{i,j-1}+a_{i,j}\nonumber\\
	  &\quad\quad+a_{i,j+1}+a_{i+1,j-1}+a_{i+1,j}+a_{i+1,j+1}).
\end{align}

---

On peut aisément constater que ces opérations sont mal définies pour les pixels se trouvant sur les bords de l'image (aux endroits où les pixels n'ont pas suffisamment de voisins
pour effectuer l'opération de convolution). Il existe différentes solutions possibles:

1. Diminuer la taille de l'image traitée. L'image sera plus petite que l'image de départ de $n$ pixels, où $n\times n$ est la taille de la matrice de convolution.
2. La taille de l'image est étendue en copiant le dernier pixel sur tous les pixels manquants dans une direction donnée.
3. On effectue une réflexion miroir de limage dans toutes les directions.

# Systèmes d'équations linéaires

Vous avez déjà vu les systèmes d'équations à 2 ou 3 inconnues et comment les résoudre. Ici nous allons généraliser 
le problèmes à $n$ inconnues et voir comment ce genre de choses peut se traiter à l'aide de ce que nous connaissons sur les 
applications linéaires et les matrices.

## Rappel sur les équations à deux inconnues

Un système de deux équations à deux inconnues est un couple d'équations contenant deux inconnues.
Par exemple le système suivant
\begin{align}
2x+3y&=-1,\\
-x+y&=3.
\end{align}
Vous connaissez deux méthodes pour résoudre ce type d'équations: par substitution et par addition.
En additionnant la première équation avec la deuxième qu'on aura multipliée par $2$, on obtient
\begin{equation}
5y=5,\quad \Leftrightarrow y=1.
\end{equation}
En utilisant ce résultat et en le remplaçant dans la deuxième équation du système ci-dessus, on obtient
\begin{equation}
-x+1=3,\quad \Leftrightarrow x=-2.
\end{equation}
On a donc que la solution est donné par 
$$
x=-2,\quad y=1.
$${#eq:sol_syst}

De façon générale un système d'équations peut avoir un solution unique, aucune solution, ou une infinité de solutions.

---

Illustration (Systèmes d'équations) +.#

Le système d'équation suivant ne possède aucune solution
\begin{align}
x+y&=1,\\
x+y&=-1.
\end{align}
En effet, si nous soustrayons ces deux équations, nous obtenons
\begin{equation}
0=2,
\end{equation}
ce qui est impossible. On ne peut donc pas trouver un $x$ et un $y$ qui satisfont en même temps ces deux équations.

En revanche, le système d'équations suivant possède une infinité de solutions
\begin{align}
x+y&=1,\\
2x+2y&=2.
\end{align}
En effet, ces deux équations sont en fait identiques à un facteur multiplicatif près. 
Si nous divisons la deuxième équation par deux et soustrayons ces équations nous obtenons
\begin{equation}
0=0.
\end{equation}
En fait la solution de ce système d'équations est donné par la droite $y=1-x$. Pour chaque valeur possible de $x$, nous pouvons trouver une valeur de $y$
et ce couple sera solution du système d'équations.

---

---

Remarque +.#

Il n'est pas nécessaire que le nombre d'équations soit égal au nombre d'inconnues dans un système d'équations. Dans le cas, ou le nombre d'équations est inférieur, il est certain que le système n'aura pas de solution unique: il ne peut avoir qu'une infinité de solutions, car nous n'aurons qu'une équation à deux inconnues de la forme
$$
ax+by=c.
$$
Dans ce cas, on dit que le système est *sous-déterminé*.
A l'inverse, le système d'équations peut contenir plus de deux équations.
Dans ce cas, si toutes les équations sont indépendantes (une équation n'est pas une combinaison linéaire d'autres) alors le système ne possède pas de solution. On dit que le système est *sur-déterminé*.

---

## Les équations à deux inconnues sous forme matricielle

Le système d'équations à deux inconnues suivant
\begin{align}
2x+3y&=-1,\\
-x+y&=3,
\end{align}
peut en fait s'écrire sous la forme d'un produit matrice-vecteur
$$
\mat{A}\cdot \vec x=\vec b,
$$
où 
$$
\mat{A}=\mattwo{2}{3}{-1}{1}, \quad \vec x=\vectwo{x}{y},\quad \vec b=\vectwo{-1}{3}.
$$
Nous pouvons donc utiliser tout ce que nous avons vu concernant les matrices. En particulier, si nous supposons que $\mat{A}$ possède une matrice inverse, $\mat{A}^{-1}$, nous pouvons multiplier cette équation
par $\mat{A}^{-1}$ des deux côtés et nous obtenons
\begin{align}
\mat{A}^{-1}\cdot \mat{A}\cdot \vec x&=\mat{A}^{-1}\cdot\vec b,\nonumber\\
\vec x&=\mat{A}^{-1}\cdot\vec b.
\end{align}
Dans le cas présent, $\mat{A}^{-1}$ est donnée par
$$
\mat{A}^{-1}=\frac{1}{5}\mattwo{1}{-3}{1}{2}.
$$
On peut donc calculer la solution 
\begin{equation}
\vec x=\frac{1}{5}\mattwo{1}{-3}{1}{2}\cdot\vectwo{-1}{3}=\vectwo{-2}{1}.
\end{equation}
Nous somme rassurés, car cette solution est exactement la même que celle que nous avions trouvé à l'@eq:sol_syst.

---

Exercice +.#

Calculer la solution au système d'équations 
\begin{align}
-4x+1y&=0,\\
-x+7y&=3,
\end{align}
en utilisant la méthode d'inversion de matrice.

---

Nous venons de constater que pour trouver une solution unique 
à un système de deux inconnues, écrit sous la forme $\mat{A}\cdot \vec x=\vec b$, nous devions calculer l'inverse de la matrice $\mat{A}$. Cette méthode implique que la matrice $\mat{A}$ soit inversible et donc qu'elle soit d'une part carrée (autant d'équations que d'inconnues) et que son déterminant soit non-nul.

En effet, si nous considérons le système d'équations
\begin{align*}
x+y&=1,\\
x+y&=-1.
\end{align*}
Nous pouvons le réécrire sous la forme 
$$
\mat{C}\cdot \vec x=\vec d,
$$
où
$$
\mat{C}=\mattwo{1}{1}{1}{1},\quad \vec d=\vectwo{1}{-1}.
$$ 
Il est immédiat de calculer $\det{(\mat{C})}=1-1=0$ et que donc l'inverse de la matrice n'existe donc pas, et donc le système ne possède pas de solution.

En python, il est assez aisé de résoudre un système 
de deux équations  deux inconnues. On peut écrire cela à l'aide de la librairie numpy.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> import numpy as np
>>> A=np.matrix([[2, 3],[-1, 1]])
>>> b=np.array([-1,3])
>>> np.linalg.inv(A).dot(b) # A^{-1}*b
matrix([[-2.,  1.]])
>>> np.linalg.solve(A,b) # resolution directe
array([-2.,  1.])
>>> A=np.matrix([[1, 1],[1, 1]]) # det(A)=0
>>> np.linalg.solve(A,b)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/lib/python3.6/site-packages/numpy/linalg/linalg.py",
  line 390, in solve
    r = gufunc(a, b, signature=signature, extobj=extobj)
  File "/usr/lib/python3.6/site-packages/numpy/linalg/linalg.py",
  line 89, in _raise_linalgerror_singular
    raise LinAlgError("Singular matrix")
numpy.linalg.linalg.LinAlgError: Singular matrix
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dans le premier cas ci-dessus, nous avons d'abord calculé l'inverse de la matrice $\mat{A}$ puis multiplié le résultat avec le vercteur $\vec b$. L'autre 
solution est de résoudre directement le système linéaire. Dans un deuxième temps, nous avons choisi une matrice $\mat{A}$ qui ne peut
être inversée (et donc la résolution du système d'équations est impossible).

### Sur la structure du système d'équations 

Si nous reprenons la structure générale d'un système de deux équations à deux inconnues,
nous pouvons l'écrire tel que
\begin{equation*}
\mat{A}\cdot \vec x=\vec b,
\end{equation*}
où $\mat{A}$ est une matrice $2\times 2$ et $\vec x,\vec b\in \real^2$.

Une autre façon de l'écrire serait 
\begin{equation}
\vec a_1 x_1+\vec a_2 x_2=\vec b,
\end{equation}
où $\vec a_1$ et $\vec a_2$ sont les deux colonnes de la matrice $\mat{A}$. 
On a donc une interprétation géométrique assez intéressante. Nous recherchons en fait les coefficients
$x_1$, $x_2$ tels que la combinaison linéaire de $\vec a_1$ et $\vec a_2$ donne $\vec b$.
Nous avons donc différents cas de figure (voir la @fig:syst_eq).

1. Si $\vec a_1$ et $\vec a_2$ sont linéairement indépendants, nous pouvons engendrer n'importe quel vecteur $\vec b$ de façon unique et donc le système a une solution.
2. Si $\vec a_1$ et $\vec a_2$ sont linéairement dépendants (colinéaires), il n'est possible de générer qu'un vecteur colinéaire avec $\vec a_1$ et $\vec a_2$. Si $\vec b$ n'est pas colinéaire il n'y a pas de solution au système d'équation. Si au contraire $\vec b$ est colinéaire avec $\vec a_1$ et $\vec a_2$ il existe une infinité de solutions. 

![Illustration d'un système de deux équations à deux inconnues. A gauche $\vec a_1$ et $\vec a_2$ sont linéairement indépendants, au milieu ils sont linéairement dépendants avec le vecteur $\vec b$, et à droite ils sont linéairement dépendants entre eux, mais pas avec le vecteur $\vec b$.](figs/syst_eq.png){#fig:syst_eq width=100%}


## Les équations à $n$ inconnues

A présent, nous allons généraliser les systèmes d'équations linéaires à un nombre arbitraire d'inconnues.

### Les équations linéaires

Un système de $n$ équations linéaires à $n$ inconnues peut s'écrire sous la forme
\begin{align}
&a_{11} x_1+a_{12} x_2+...+a_{1n-1} x_{n-1}+a_{1n} x_n=b_1,\\
&a_{21} x_1+a_{22} x_2+...+a_{2n-1} x_{n-1}+a_{2n} x_n=b_2,\\
&\quad\quad\quad\quad\quad\quad\quad\quad\quad\vdots \nonumber\\
&a_{n1} x_1+a_{n2} x_2+...+a_{nn-1} x_{n-1}+a_{nn} x_n=b_n.
\end{align}
où $\{x_i\}_{i=1}^{n}\in\real$ sont les inconnues et $\{a_{1i}\}_{i=1}^n,\{b_i\}_{i=1}^n\in \real$ sont des coefficients connus.

De façon similaire à ce que nous avons constaté pour les équations à deux inconnues,
nous pouvons écrire cette équation sous la forme d'un produit matrice vecteur
\begin{equation}
\mat{A}\cdot \vec x=\vec b,
\end{equation}
où $\mat{A}$ est une matrice $n\times n$ et $\vec b\in\real^n$
$$\mat{A}=\begin{pmatrix} a_{11} & a_{12}  & \cdots & a_{1n} \\
                          a_{21} & a_{22}  & \cdots & a_{2n} \\
                          \vdots & \vdots  & \ddots & \vdots \\
                          a_{n1} & a_{n2}  & \cdots & a_{nn} \end{pmatrix},\quad 
\vec b=\begin{pmatrix} b_{1} \\
                       b_{2}\\
                       \vdots\\
                       b_{n} \end{pmatrix}.
$$

Si la matrice $\mat{A}$ est inversible et a une matrice inverse $\mat{A}^{-1}$, ce système peut se résoudre en multipliant par $\mat{A}^{-1}$ des deux côtés de l'équation
\begin{align}
\mat{A}\cdot \vec x&=\vec b,\nonumber\\
\mat{A}^{-1}\cdot\mat{A}\cdot \vec x&=\mat{A}^{-1}\cdot\vec b,\nonumber\\
\vec x&=\mat{A}^{-1}\cdot\vec b.
\end{align}
Cette solution peut se calculer de cette façon uniquement si $\mat{A}^{-1}$ est inversible et donc si $\det{\mat{A}}\neq 0$. 

### La décomposition $LU$

Comme nous l'avons vu précédemment le calcul de l'inverse d'une matrice est quelquechose qui n'est pas simple. Dans la définition générale, cela implique le calcul récursif de déterminants (ce qui est très coûteux). Une méthode plus efficace de résolution de système linéaire peut se faire sans calcul explicite de l'inverse. Pour discuter une des méthodes porssibles, nous allons d'abord tenter de résoudre un cas particulier de système linéaire. Soit le système linéaire suivant
\begin{align}
&a_{11} x_1+a_{12} x_2+...+a_{1n-1} x_{n-1}+a_{1n} x_n=b_1,\\
&a_{22} x_2+...+a_{2n-1} x_{n-1}+a_{2n} x_n=b_2,\\
&\quad\quad\quad\quad\quad\quad\quad\quad\quad\vdots \nonumber\\
&a_{n-1,n-1} x_{n-1}+a_{n-1,n} x_n=b_{n-1},\nonumber\\
&a_{nn} x_n=b_n.
\end{align}
Ce genre d'équations peut se résoudre de façon récursive.
On commence par résoudre la $n$-ème équation,
$$
x_n=\frac{b_n}{a_{nn}}.
$$
Puis en utilisant ce résultat pour résoudre l'équation $n-1$
\begin{align}
a_{n-1,n-1} x_{n-1}+a_{n-1,n} x_n&=b_{n-1},\nonumber\\
a_{n-1,n-1} x_{n-1}+a_{n-1,n} \frac{b_n}{a_{nn}}&=b_{n-1},\nonumber\\
x_{n-1}&=\frac{b_{n-1}-a_{n-1,n} \frac{b_n}{a_{nn}}}{a_{n-1,n-1}}.
\end{align}
Et ainsi de suite pour l'équation $n-2$, ... On arrive ainsi itérativement à la première équation.

Ce type d'équation se résout donc de façon triviale.

Le système d'équations ci-dessus peut s'écrire sous la forme d'un produit matrice vecteur
\begin{equation}
\mat{U}\cdot \vec x=\vec b,
\end{equation}
où $\mat{U}$ est une matrice *diagonale supérieure* (les coefficients dans la matrice sont nuls sous la diagonale de la matrice) et $\vec b\in\real^n$
$$\mat{U}=\begin{pmatrix} a_{11} & a_{12}  & \cdots & \cdots & a_{1n} \\
                          0 & a_{22}  & \cdots & \cdots & a_{2n} \\
                          0 & 0 & a_{33}  & \cdots & a_{3n} \\
                          \vdots & \vdots  & \ddots & \ddots & \vdots \\
                          0 & 0  & \cdots & 0 & a_{nn} \end{pmatrix},\quad 
\vec b=\begin{pmatrix} b_{1} \\
                       b_{2}\\
                       b_{3}\\
                       \vdots\\
                       b_{n} \end{pmatrix}.
$$

Un autre type de système d'équations pouvant se résoudre de façon simple est le celui composé du produit d'une matrice $\mat{L}$ qui est *diagonale inférieure*
(les coefficients dans la matrice sont nuls au-dessus la diagonale de la matrice).

Si nous revenons à présent à la résolution du système d'équations
$$
\mat{A}\cdot \vec x=\vec b,
$$
où $\mat{A}$ est une matrice quelconque $n\times n$. Si nous pouvons mettre $\mat{A}$ sous la forme
$$
\mat{A}=\mat{L}\cdot \mat{U},
$$
alors nous pouvons résoudre n'importe quel système de façon triviale.
En effet, si $\mat{A}=\mat{L}\cdot \mat{U}$, le système ci-dessus s'écrit
\begin{equation}
\mat{L}\cdot \mat{U}\cdot \vec x=\vec b.
\end{equation}
En renommant $\mat{U}\cdot\vec x=\vec y$, on peut écrire
\begin{equation}
\mat{L}\cdot \vec y=\vec b.
\end{equation}
On peut donc commencer par résoudre ce système pour $\vec y$ (ce qui est aisé car $\mat{L}$ est une matrice triangulaire), puis il ne nous reste qu'à résoudre le système 
$$
\mat{U}\cdot\vec x=\vec y,
$$
où $\vec y$ et $\mat{U}$ sont connus. Nous obtenons donc $\vec x$ en deux étapes.

Il se trouve que si $\mat{A}$ est inversible, on peut toujours la décomposer sous la forme $\mat{A}=\mat{L}\cdot\mat{U}$. Cela s'appelle la *décomposition LU*. On ne va pas démontrer cette propriété ici, mais plutôt décrire l'algorithme. Il se base sur la méthode de l'élimination de Gauss. Prenons ici une matrice $3\times 3$ donnée par
\begin{equation}
\mat{A}=\begin{pmatrix} 
1 & 1 & -1 \\
1 & -2 & -2 \\
-3 & 2 & 2
\end{pmatrix},
\end{equation}
et $\vec b$ donné par
\begin{equation}
\vec b=\begin{pmatrix} 
1 \\
1 \\
1
\end{pmatrix},
\end{equation}

En effectuant l'équivalent de l'élimination de Gauss sur cette matrice, nous allons construire la matrice diagonale supérieure, $\mat{U}$, ainsi que la matrice diagonale inférieure, $\mat{L}$, en réutilisant les coefficients de l'élimination de Gauss. La matrice $\mat{L}$ aura la forme suivante
\begin{equation}
\mat{L}=\begin{pmatrix} 
1 & 0 & 0\\
l_{21} & 1 & 0 \\
l_{31} & l_{32} & 1
\end{pmatrix}.
\end{equation}

Notons $r_1$, $r_2$ et $r_3$ les trois lignes (rows en bon français) de la matrice $\mat{A}$. Nous souhaitons d'abord éliminer l'élément $a_{21}$. Pour cela la deuxième ligne nous devons écrire la deuxième ligne de la matrice comme 
$$
r_2'=-1\cdot r_1+r_2.
$$
La matrice $\mat{A}$ deviendra donc
\begin{equation}
\mat{A}'=\begin{pmatrix} 
1 & 1 & -1 \\
0 & -3 & -1 \\
-3 & 2 & 2
\end{pmatrix}.
\end{equation}
Dans le même temps, nous pouvons commencer à remplir la matrice $\mat{L}$. L'élément $l_{21}$ est l'opposé du coefficient $-1$ utilisé dans l'élimination de Gauss. Il vaudra donc $l_{21}=1$. La matrice $\mat{L}$ vaudra donc
\begin{equation}
\mat{L}=\begin{pmatrix} 
1 & 0 & 0\\
1 & 1 & 0 \\
l_{31} & l_{32} & 1
\end{pmatrix}.
\end{equation}
Nous souhaitons maintenant mettre à zéro l'élément $a_{31}$ de la matrice $\mat{A}'$. On doit donc transformer $r_3$ en
$$
r_3'=3\cdot r_1+r_3.
$$
La matrice $\mat{A}$ devient donc
\begin{equation}
\mat{A}''=\begin{pmatrix} 
1 & 1 & -1 \\
0 & -3 & -1 \\
0 & 5 & -1
\end{pmatrix},
\end{equation}
et $\mat{L}$ vaut 
\begin{equation}
\mat{L}=\begin{pmatrix} 
1 & 0 & 0\\
1 & 1 & 0 \\
-3 & l_{32} & 1
\end{pmatrix}.
\end{equation}
Finalement il faut annuler l'élément $a_{32}$, cela se fait en transformant $r_3'$ par
$$
r_3''=\frac{5}{3}r_2'+r_3.
$$
On obtient donc $\mat{A}'''=\mat{U}$
\begin{equation}
\mat{U}=\begin{pmatrix} 
1 & 1 & -1 \\
0 & -3 & -1 \\
0 & 0 & -\frac{8}{3}
\end{pmatrix},
\end{equation}
et $\mat{L}$ devient
\begin{equation}
\mat{L}=\begin{pmatrix} 
1 & 0 & 0\\
1 & 1 & 0 \\
-3 & -\frac{5}{3} & 1
\end{pmatrix}.
\end{equation}
On peut aisément que $\mat{L}\cdot \mat{U}=\mat{A}$.

On peut à présent résoudre ce système en deux étapes.

1. Résoudre le système 
$$\mat{L}\vec y=\vec b,$$
qui nous donne le système
\begin{align}
y_1&=1,\\
y_1+y_2&=1,\\
-3y_1-\frac{5}{3}y_2+y_3&=1,
\end{align}
qui se résout itérativement par
\begin{align}
y_2&=1,\\
y_3&=4.
\end{align}
2. Résoudre 
$$\mat{U}\vec x=\vec y.$$
Qui se résout itérativement 
\begin{align}
x_1+x_2-x_3&=1,\\
-3x_2-x_3&=0,\\
-\frac{8}{3}x_3&=4.
\end{align}
Il vient
\begin{align}
x_1&=1,\\
x_2&=\frac{1}{2},\\
x_3&=-\frac{3}{2}.
\end{align}

Cette méthode n'est de loin pas la seule (ni la plus efficace) des méthodes de résolution de systèmes linéaires. En fait l'inversion de systèmes d'équations linéaires est un art très complexe. Il intervient notamment lors de la résolution numériques de systèmes d'équations différentielles aux dérivées partielles.

---

Exercice (Décomposition $LU$) +.#

Résoudre le système suivant à l'aide de la décomposition $LU$
\begin{align}
&x_1+x_2+x_3=1,\\
&x_1-x_2-x_3=-2,\\
&x_1+x_2+x_3=3.
\end{align}

---

# Suites

Une suite est une fonction, $f$, un peu particulière qui fait correspondre un entier à un réel
\begin{equation}
u:\natural\rightarrow \real.
\end{equation}
On la représente souvent les suites comme
$$
n\in \natural \rightarrow u_n\in \real,
$$
où $u_n$ est le terme d'indice $n$ de la suite.

--- 

Remarque +.#

On pourrait également noter les suites comme une fonction 
$$
n\rightarrow u(n),
$$
mais ce n'est presque jamais le cas, pour des raisons historiques.

---

---

Illustration (Suites) +.#

Il existe différentes façon d'exprimer des suites. On en liste quelques une ici.

1. Les termes de la suite sont donnée par une formule quelconque. Par exemple, 
$\forall n\in \natural$
\begin{align}
u_n&=\frac{1}{n},\\
u_n&=\frac{2^n}{n!},\\
u_n&=\left(1+\frac{1}{n}\right)^n.
\end{align}
2. Les termes sont donnés via une relation de récurrence à un pas
\begin{align}
u_{n+1}=u_n+(n+1),\ u_0=0,
\end{align}
ou même avec une récurrence à plus de pas (deux ici)
\begin{align}
u_{n+1}=u_n+u_{n-1},\ u_0=0,\ u_1=1.
\end{align}
3. On le verra l'année prochaine, mais un autre exemple typique de suite peut être obtenu lors de la résolution numérique d'équation différentielles. Par exemple
$$
u_{n+1}=u_n + \Delta t \cdot u_n,\ u_0=1.
$$
est une façon d'approximer la solution de l'équation différentielle 
$$
u'(t)=u(t),\ u(t=0)=1.
$$

---

## Récurrence 

Une application intéressante des suites est le principe de récurrence. 
Elle suit de la propriété suivante. Soit $E\subseteq \natural$ un sous-ensemble d'entiers, alors si

1. Si $0\in E$, et
2. $\forall n\in \natural$, $n\in E\Rightarrow n+1\in E$,

alors $E=\natural$.

Ce principe est utile dans un grand nombre de démonstrations mathématiques.
Soit une propriété 
$$P(n), \quad n\in \natural,$$
que nous souhaitons démontrer $\forall n\in\natural$.
La procédure de démonstration va comme suit

1. Démontrer $P(0)$ est vrai.
2. En supposant que $P(n)$ est vraie, alors montrer que $P(n+1)$ est vraie.

---

Exemple (La somme des $n$ premiers entiers) +.#

Démontrer que la somme des $n$ premiers entiers est donnée par
$$
0+1+2+3+...+n-1+n=\sum_{i=0}^n i=\frac{n(n+1)}{2}.
$$

Solution (La somme des $n$ premiers entiers) +.#

Dans un premier temps il faut démontrer la relation ci-dessus pour $n=0$. Cela se fait trivialement, car si $n=0$, nous avons
$$
0=0\cdot(0+1)/2=0.
$$
À présent, en supposant que la propriété est vrai pour $n$, il faut démontrer qu'elle reste vraie pour $n+1$. Il faut donc montrer que 
$$
\sum_{i=0}^{n+1}i=\sum_{i=0}^{n}i+(n+1)=\frac{(n+1)(n+2)}{2}.
$${#eq:hyp_n}
Le terme de droite de cette équation peut s'écrire
$$
\frac{(n+1)n}{2}+\frac{2(n+1)}{2}=\sum_{i=0}^n+(n+1).
$$
Ce qui est bien égal à l'@eq:hyp_n.

---

---

Exercice (Récurrence) +.#

1. Montrer par récurrence que 
$$
\sum_{i=0}^ni^2=\frac{n(n+1)(2n+1)}{6}.
$$
2. Soit $u_n$ avec $u_0=0$ et $u_{n+1}=\frac{1+2u_n}{2+u_n}$, alors $\forall n\in\natural^\ast$, $u_n\leq 1$.

---

## Convergence et divergence des suites

L'évolution des suites peut se révéler particulièrement intéressante. Cela se fait toujours lors de l'étude de la complexité algorithmique, et en particulier lors de la comparaison de la complexité de deux algorithmes. 
Dans ce cas, nous étudions l'évolution de suites d'entiers pour un $n\in\natural$ "grand" ou "tendant vers l'infini". 

### Convergence

Si une suite $u_n$ *tend* vers une valeur fixe à l'infini on dit qu'elle est *convergente*. En termes plus mathématiques, on dit qu'une suite est convergente vers un réel $l\in\real$ si
$$\forall \varepsilon > 0,\ \exists n_0\in\natural,\ t.q.\ \forall n\geq n_0,\ |u_n-l|<\varepsilon.$$
Si elle existe, on dit que $l$ est la limite de la suite $u_n$ et elle est unique.


Il existe différents types de suites convergentes (pathologiques?) particulières:

1. La suite *constante* qui est telle que pour
$$
\forall n\in\natural,\quad u_n=u_0.
$$
2. La suite *stationnaire*, qui se définit par
$$
\exists n_0\in\natural, t.q.\ u_n=u_0,\ \forall n\geq n_0.
$$

---

Illustration (Convergence) +.# 

1. La suite $u_n=1/n$, converge vers $0$.
2. La suite $u_n=\left(1+\frac{1}{n}\right)^n$ converge vers $e$.
3. La suite $u_n=\frac{x^n}{n!}$ converge vers $0$, pour tout $x$.
4. La suite $u_n=\frac{2n^2+4}{n^2-2}$, converge vers $2$.

--- 

### Divergence 

A l'inverse d'une suite convergente, nous avons la suite *divergente*, qui tend "vers l'infini" lorsque $n\rightarrow \infty$. De façon plus mathématique on dit qu'une suite $u_n$ est divergente si
$$
\forall M\in\real,\ \exists n_0\in\natural,\ t.q.\ \forall n\geq n_0,\ |u_n|>M.
$$

Il existe des suites qui ne sont ni convergentes, ni divergentes. Un cas particulier est la suite *périodique* qui est définie comme
$$
\exists N\in\natural^\ast,\ t.q.\ u_n=u_{n+N},
$$
et $N$ est la période de la suite.

---

Illustration (Divergence) +.# 

1. La suite $u_n=n$ diverge.
2. La suite $u_n=e^n$ diverge.
3. La suite $u_n=\frac{3n^3-4}{2n^2+3n}$ diverge.

--- 

## Des suites importantes

### La suite arithmétique

Une suite arithmétique est une suite définie comme
$$
u_n=a\cdot n + b,\ n\in\natural,
$$
où $a,b\in\real$ et $a$ est appelé la *raison* de la suite géométrique et $b$ le terme initial. Pour $b=0$ et $a=1$, nous avons la suite des entiers naturel, $u_n=n$.
Si nous connaissons les termes de notre suites, nous pouvons calculer la raison comme
$$
a=u_n-u_{n-1}.
$$
La suite arithmétique diverge toujours, à moins que $a=0$. En effet, nous pouvons l'écrire de façon récursive comme
$$
u_n=u_n+a.
$$
Elle croira donc forcément à l'infini (ou à moins l'infini) pour $n\rightarrow \infty$.

### La suite géométrique

Une suite *géométrique* est une suite définie comme
$$
u_n=a\cdot r^n,\ n\in\natural,
$$
où $a,r\in\real$ et $r$ est appelé la *raison* de la suite géométrique et $a$ le terme initial.
Si nous connaissons les termes de notre suites, nous pouvons calculer la raison comme
$$
r=\frac{u_n}{u_{n-1}}.
$$

---

Illustration (Suite géométrique I) +.#

1. La suite de nombres 
$$
\{u_n\}_{n=0}^\infty=\{2,4,8,16,32,64,...\}
$$
est une suite géométrique de raison $r=2$ et de premier terme $a=2$.
2. La suite de nombres 
$$
\{u_n\}_{n=0}^\infty=\left\{\frac{1}{2},\frac{1}{4},\frac{1}{8},\frac{1}{16},\frac{1}{32},\frac{1}{64},...\right\}
$$
est une suite géométrique de raison $r=\frac{1}{2}$ et de premier terme $a=\frac{1}{2}$.

---

Une suite géométrique peut également se définir par récurrence
$$
u_{n+1}=r\cdot u_{n}.
$$

La convergence (ou divergence) d'une suite géométrique ne dépend que de la raison de la suite. En effet, nous avons plusieurs cas de figure:
1. Si $r\in ]-1,1]$ la suite converge.
2. Si $r\in ]-\infty,-1[\cup ]1,\infty[$ la suite diverge.
3. Si $r=-1$ la suite est périodique.


### La suite de puissances

On définit la suite de puissances comme
$$
u_n=n^m,\ m\in \integer.
$$
Cette suite a trois comportement possibles lorsque $n$ tend vers l'infini

1. Si $p>0$, $u_n\rightarrow \infty$ pour $n\rightarrow\infty$.
2. Si $p<0$, $u_n\rightarrow 0$ pour $n\rightarrow\infty$.
3. Si $p=0$, $u_n=1$ pour tout $n\in\integer$.

## Exemple de suite récursive: la méthode de Newton

Les suites récursives sont présentes dans un grand nombre d'applications. 
La méthode que nous allons étudier ici est la méthode de Newton pour déterminer les zéros d'une fonction.

Soit une fonction $f$, 
$$
f:\real\rightarrow \real,
$$
dérivable partout (sa dérivée existe partout). Nous souhaitons déterminer les zéros de la fonction (les points où elle coupe l'axe des $x$)
$$
f(x)=0.
$$

---

Illustration (Polynôme de degré 2) +.#

Si $f(x)=a\cdot x^2+b\cdot x + c$, alors ces zéros sont les $x$ tels que
$$
f(x)=a\cdot x^2+b\cdot x + c=0.
$$
La solution de cette équation est de la forme
$$
x_\pm=\frac{-b\pm\sqrt{b^2-4ac}}{2a}.
$$
Si $x_\pm\in\real$ nous pouvons avoir différents cas de figure

1. Si $b^2-4ac>0$ nous avons deux solutions.
2. Si $b^2-4ac=0$ nous avons une solution.
3. Si $b^2-4ac<0$ nous n'avons pas de solution.

---

Dans certains cas, il est très difficile de déterminer les zéros d'une fonction analytiquement (voire cela est impossible) il faut donc recourir à des méthodes numériques, qui sont des méthodes itératives. Une des plus populaires est la méthode de Newton (ou Newton--Raphson). 

Avant de nous plonger dans le détail de la méthode de Newton, nous avons devons voir comment construire l'équation de la tangente d'une fonction (si celle-ci est dérivable) en un point $x_0$. Comme vous le savez, la pente de la tangente d'une fonction en un point $x_0$ est donnée par sa dérivée, $f'(x_0)$. Nous cherchons donc l'équation de la droite de pente $f'(x_0)$ passant par $f(x_0)$ en $x_0$. Nous pouvons réécrire cette équation sous la forme
$$
f(x_0)=f'(x_0)\cdot x_0+b,
$$
où $b$ est l'inconnue à déterminer. On inverse facilement cette équation pour obtenir
$$
b=f(x_0)-f'(x_0)\cdot x_0.
$$
L'équation de la tangente, $t(x)$, s'écrit alors
$$
t(x)=f'(x_0)\cdot (x-x_0)+f(x_0).
$$

Avec ce résultat, nous pouvons à présent décrire la méthode de Newton.

Nous cherchons donc la valeur $x$ telle que $f(x)=0$. Pour ce faire, nous commençons à une valeur $x_0\in\real$ et allons itérativement, nous rapprocher d'un des zéros de la fonction à l'aide d'une suite $x_n$ de points. Depuis le point $x_0$, nous allons calculer la tangente de fonction $f$, $t(x)$, et nous allons calculer le point suivant dans la suite, $x_1$, comme étant l'intersection de $t(x)$ et l'axe horizontal. Soit $x_1$ tel que
\begin{align}
t(x_1)=f'(x_0)\cdot (x_1-x_0)+f(x_0)&=0,\nonumber\\
x_1&=x_0-\frac{f(x_0)}{f'(x_0)}.
\end{align}
Ce processus est répété et pour un $n$ arbitraire on a
$$
x_{n+1}=x_n-\frac{f(x_n)}{f'(x_n)}.
$$
On s'arrête lorsque le zéro est déterminé avec une précision suffisante, ou que la variation entre deux itérations successives est assez petite. Ce qui revient à choisir un $\varepsilon>0$, tel que
$$
|f(x_n)| < \varepsilon,\quad |x_n-x_{n-1}| < \varepsilon.
$$

--- 

Remarques (non-convergence ou convergence lente) +.#

Il y a un certain nombre de cas où la méthode de Newton ne converge pas.

1. S'il existe un $n$ tel que $f'(x_n)=0$ alors la suite diverge.
2. La suite peut entrer dans un cycle.
3. La dérivée est mal définie proche du zéro (ou sur le zéro).
4. Elle peut converger très lentement si la dérivée de la fonction est nulle sur le zéro.
5. A chaque point de départ ne correspond qu'un zéro. Si la fonction possède plusieurs zéros, il n'y a pas moyen de le savoir avec un seul point de départ. Il faut alors en essayer plusieurs.

---

La méthode de Newton peut être très utile en optimisation. Elle permettrait alors de déterminer les extrémas locaux d'une fonction (min/max). Elle peut également se généraliser à plusieurs variables et peut s'utiliser dans différents algorithmes. Un exemple typique en apprentissage automatique est la détermination des paramètres d'une régression logistique. 




# Séries

## La somme limitée d'une suite

Nous nous intéressons à présent au calcul de la somme d'un certain nombre de termes d'une suite, $(u_n)_{n=0}^\infty$. Si nous sommons les $k$ premiers termes de la suite, nous pouvons écrire cette somme comme
$$
u_0+u_2+u_3+...+u_k.
$$
Il est beaucoup plus court et aisé de noter cette somme comme
$$
S_k(u)=\sum_{i=0}^ku_i=u_0+u_1+u_2+u_3+...+u_k,
$$
où $k$ est le nombre de terme que nous voulons sommer, et $u$ le terme général (la suite correspondant à la somme).
La somme $S_k$ s'appelle également *somme partielle*.
De façon générale on note une somme entre les indice $a$ et $b$ comme
$$
\sum_{i=a}^bu_i=u_a+u_{a+1}+u_{a+2}+...+u_{b-2}+u_{b-1}+u_b.
$$
Une somme est très simplement implémentée en informatique à l'aide d'une boucle `for`

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> somme = 0
>>> for i in range(0,11):
...     somme += 4*i*i
... 
>>> somme
1540
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

--- 

Illustrations (Sommes limitées) +.#

1. La somme des $10$ premiers entiers
$$
S_{10}(i)=\sum_{i=0}^{10} i=0+1+2+3+...+9+10=55.
$$
2. La somme du carré des multiplié par 4 des 10 premiers entiers
$$
S_{10}(4i^2)=\sum_{i=0}^{10} 4\cdot i^2=4\cdot 0+4\cdot 1+4\cdot 4+4\cdot 9+...+4\cdot 100=1540.
$$
3. La somme *alternée* des 10 premiers entier
$$
S_{10}((-1)^i\cdot i)=\sum_{i=0}^{10} (-1)^i\cdot i=-1+2-3+...-9+10=5.
$$
4. La somme des $n$ premiers entiers
$$
S_{n}(i)\sum_{i=0}^n i=\frac{n(n+1)}{2}.
$$

---

La somme de $k$ termes d'une suite est *linéaire* (ben oui c'est rien d'autre qu'une somme). En effet, nous pouvons vérifier les propriétés suivantes pour $(u_n)_{n=0}^\infty$, et $(v_n)_{n=0}^\infty$ des suites réelles et $\alpha\in\real$. Si $k\in\natural$ nous avons que

1. La somme de l'addition de deux suites est égale à l'addition de la somme de chacun des suites
$$
S_k(u+v)=\sum_{i=0}^k\left(u_i+v_i\right)=\sum_{i=0}^k u_i+\sum_{i=0}^kv_i=S_k(u)+S_k(v).
$$
2. La somme du produit de $\alpha$ avec une suite est le produit de $\alpha$ avec la somme de la suite
$$
S_k(\alpha u)=\sum_{i=0}^k(\alpha\cdot u_i)=\alpha\sum_{i=0}^ku_i=\alpha\cdot S_k(u).
$$

--- 

Exercice (Somme des $n$ premiers termes de la suite arithmétique) +.#

Calculer la somme des $n$ premiers termes de la suite arithmétique
$$
S_n(a+ri)=\sum_{i=0}^n (a+i\cdot r),
$$
où $a,r\in\natural$.

---

## Les séries

Comme pour les suites, nous nous intéressons ici au comportement d'une somme  lorsque le nombre de termes tend vers l'infini. 
Si nous considérons la somme 
des $k$ premiers termes de la suite $u_n$, $S_k(u)=\sum_{i=0}^ku_i$, et que nous faisons tendre
$k\rightarrow\infty$ on peut écrire
$$
\lim_{k\rightarrow \infty}S_k=\lim_{k\rightarrow \infty}\sum_{i=0}^ku_i=\sum_{i=0}^\infty u_i.
$$
Une telle somme est appelée une *série*. On dit que la série *converge* si la limite ci-dessus existe. On appelle $(u_n)$ (les termes de la suite) le terme général de la série. Nous constatons donc qu'une série de terme général $u_n$, n'est rien d'autre que la somme de "tous" les termes (au sens de la limite) de la suite $u_n$.

---

Illustration (La série arithmétique) +.#

Soit la suite arithmétique $u_i=a+r\cdot i$. On peut construire la somme limitée des $n$ premier termes de la suite arithmétique comme
$$
S_n(a+r\cdot i)=\sum_{i=0}^n (a+r\cdot i)=n\cdot a+r\cdot \frac{n(n+1)}{2}.
$$
La série arithmétique correspondante 
$$
\lim_{n\rightarrow \infty}S_n(a+r\cdot i)=\lim_{n\rightarrow}\left(n\cdot a+r\cdot \frac{n(n+1)}{2}\right)= +\infty.
$$

---

Nous avons un façon simple de savoir si une série diverge. Il est certain que si le terme général de la série $u_n$ ne tend pas vers zéro pour $n\rightarrow \infty$ alors la série diverge. Nous pouvons également affirmer que si une série converge, alors son terme général, $u_n$, tend vers $0$ pour $n\rightarrow\infty$. Nous pouvons aisément démontrer cette propriété. 
Supposons que la série $S_n=\sum_{i=0}^n u_i$ converge pour $n\rightarrow\infty$ vers $S$. On a donc que 
$$
S=\lim_{n\rightarrow \infty}S_n.
$$
De plus on peut écrire $u_n$ comme $u_n=S_{n}-S_{n-1}$. On peut en déduire en prenant la limite lorsque $n\rightarrow \infty$ que
$$
\lim_{n\rightarrow \infty} u_n=\lim_{n\rightarrow \infty}S_n-\lim_{n\rightarrow \infty}S_{n-1}=S-S=0.
$$

---

Remarque +.#

La réciproque est fausse. Si $u_n$ tend vers zéro pour pour $n\rightarrow\infty$ cela n'implique **pas** que la série de terme général $u_n$ converge.

---

Avant d'étudier de façon plus précise la convergence/divergence d'une série, nous allons voir un exemple très utile des séries qui est utilisé un peu partout (résolution d'équations différentielles, interpolation, traitement du signal, ...).

### La série de Taylor

Notre but ici est d'approximer une fonction inconnue en un point $x$
par une fonction polynomiale. Pour résumer, nous avons une fonction, $f(x)$,
$$
f:\real\rightarrow \real,
$$
dont nous ne connaissons pas les valeurs en tout $x$, et nous voulons l'approximer à l'aide d'un polynôme
\begin{align}
&p:\real\rightarrow\real,\\
&x:\rightarrow a_0+a_1\cdot x+a_2\cdot x^2+...
\end{align}
Pour ce faire, nous allons supposer que nous connaissons $f$ et toutes ses dérivées en $x=0$. La condition minimale que $p(x)$ doit satisfaire c'est que 
sa valeur en $x=0$, soit égale à celle de $f$ en $x=0$, c'est-à-dire
$$
p(0)=f(0).
$$
La première approximation (de très mauvaise qualité et général) que nous pouvons faire est que $p$ est donné uniquement par $f(0)$
$$
p(x)=f(0).
$$
Afin d'affiner notre approximation, nous pouvons vouloir que la dérivée du polynôme en $x=0$ soit la même que $f'(0)$,
$$
p'(0)=f'(0).
$$
Avec cette condition, nous pouvons écrire l'approximation à l'ordre $1$ comme
$$
p(x)=f(0)+x\cdot f'(0).
$$
En continuant ainsi, nous pouvons également vouloir que $p''(0)=f''(0)$. Pour ce faire, nous devons construire $p(x)$ comme
$$
p(x)=f(0)+x\cdot f'(0)+\frac{1}{2}\cdot x^2\cdot f''(0).
$$

---

Exercice (Le fameux $1/2$) +.#

Vérifier que $p''(0)=f''(0)$.

---

On peut continuer ainsi et à un ordre $n$, on veut que $p^{(n)}(0)=f^{(n)}(0)$. Notre polynôme s'écrira donc comme
$$
p(x)=f(0)+xf'(0)+\frac{1}{2}x^2f''(0)+\frac{1}{6}x^3f'''(0)+...+\frac{1}{n!}x^nf^{(n)}(0).
$$
Cette somme s'appelle la série de *Maclaurin* de $f(x)$. En utilisant la notation des séries on peut écrire
$$
p(x)=\sum_{i=0}^N\frac{1}{n!}x^n f^{(n)}(0).
$$

---

Exercice (Série de Maclaurin) +.#

Calculer la série de Maclaurin des fonctions suivantes

1. $f(x)=e^x$.
2. $f(x)=\frac{1}{1+x}$.
3. $f(x)=\sqrt{x}$.
4. $f(x)=1+\frac{1}{3}x^3+4 x^4.$

---


On peut généraliser la série de Maclaurin pour approximer une fonction autour d'un point arbitraire $x_0$. Avec un raisonnement similaire à ce que nous avons fait plus haut, nous voulons construire une fonction polynomiale $p(x)$, telle que
\begin{align}
p(x_0)&=f(x_0),\\
p'(x_0)&=f'(x_0),\\
p''(x_0)&=f''(x_0).\ \mbox{etc.}
\end{align}
Si nous faisions, comme pour la série de Maclaurin, nous construirions 
$p(x)$ comme
$$
p(x)=f(x_0)+xf'(x_0)+\frac{1}{2}x^2f''(x_0)+...\nonumber.
$$
Hors il est certain que cette approximation ne serait pas correcte. En effet, 
$p(x_0)=f(x_0)+x_0f'(x_0)+...\neq f(x_0)$ (et de même pour $p'(x_0)$). Afin, 
que toutes les conditions ci-dessus soient satisfaites, nous devons écrire notre approximation comme
$$
p(x)=f(x_0)+(x-x_0)f'(x_0)+\frac{1}{2}(x-x_0)^2f''(x_0)+...+\frac{1}{n!}(x-x_0)^Nf^{(N)}(x_0).
$$
Cette somme est la série de *Taylor* de degré $N$ de la fonction $f$ autour de $x_0$. Nous pouvons la noter de façon plus courte comme
$$
p(x)=\sum_{i=0}^N\frac{1}{n!}(x-x_0)^n f^{(n)}(x_0).
$$

Il existe divers questions intéressantes que nous pouvons nous poser. La première est la question de l'erreur que nous allons commettre lors de notre développement en série de Taylor. En particulier que vaudra
$$
E(x)=f(x)-p(x).
$$
Nous avons de façon triviale que $E(x_0)=f(x_0)-p(x_0)=0$ (c'est une des conditions que nous avons posée pour construire $p(x)$ un peu plus haut).
Mais en fait par construction on va également avoir que toutes les dérivées 
jusqu'à un degré $N$ de $E(x)$ évaluées en $x_0$ vont également s'annuler. En effet, comme la $n$-ème dérivée de 
$E(x)$ peut s'écrire
$$
E^{(n)}(x)=f^{(n)}(x)-p^{(n)}(x).
$$
On a alors que
\begin{align}
E'(x_0)&=f'(x_0)-p'(x_0)=0,\\
E''(x_0)&=f''(x_0)-p''(x_0)=0,\\
&\cdots,\nonumber\\
E^{(N)}(x_0)&=f^{(N)}(x_0)-p^{(N)}(x_0)=0.
\end{align}
Considérons à présent la dérivée $N+1$-ème de l'erreur 
$$
E^{(N+1)}(x)=f^{(N+1)}(x)-\underbrace{p^{(N+1)}(x)}_{=0}=f^{(N+1)}(x).
$$
Nous supposons également que $x\in[x_0,x_1]$ est dans un intervalle $x_0$, $x_1$. Nous souhaiterions pouvoir écrire à présent que $|E(x_1)|\leq M$ (que l'erreur est bornée), $M\in\real$. Pour ce faire nous allons supposer que la $N+1$ dérivée de $f$ est bornée dans l'intervalle $[x_0,x_1]$, soit
$$
|f^{(N+1)}(x)|\leq K,\ x\in[x_0,x_1],\ K\in\real.
$${#eq:d_finie}
On peut donc en déduire que 
$$
|E^{(N+1)}(x)|\leq K,
$$
étant donné que $|E^{(N+1)}(x)|=|f^{(N+1)}(x)|$.

On va à présent chercher $E^{(N)}$[^5], en fonction de $K$. On cherche la fonction, qui dérivée donne $K$. On a donc que 
$$
E^{(N)}(x)\leq K\cdot x+C,\ C\in\real.
$$
Mais on sait que $E^{(N)}(x_0)=0$. On peut donc écrire que dans le meilleur des cas, $C=-Kx_0$, et il vient
$$
E^{(N)}(x)\leq K\cdot (x-x_0).
$$
Et en continuant ainsi on a en fait
\begin{align}
E^{(N-1)}(x)&\leq K\cdot \frac{(x-x_0)^2}{2},\\
&\cdots,\nonumber\\
E(x)&\leq K\cdot\frac{(x-x_0)^{N+1}}{(N+1)!}.
\end{align}
On constate donc que la erreur croît avec $x-x_0$ (mais elle est toujours bornée). Donc plus on sera éloigné du point autour duquel nous effectuons le développement de Taylor, plus l'erreur sera importante. 

Une autre remarque importante est que l'erreur devient de plus en plus petite au fur et à mesure que $N$ devient grand pour un $x$ fixé. On a même que $E(x)$ tend vers $0$ pour $N\rightarrow \infty$. 

---

Remarque (Dérivée finie) +.#

Tous ces résultats ne son possibles que si $f$ et toutes ses dérivées sont finies dans l'intervalle $[x,x_0]$. C'est l'hypothèse que nous avons faite à 
l'@eq:d_finie.

---

## Convergence des séries

Une question que nous pouvons nous poser avec les séries de Taylor est celle de leur convergence si $N\rightarrow\infty$. En effet, la série de Taylor jusqu'à un degré $N$ d'une fonction $f$ étant donnée par
\begin{align}
p_N(x)=\sum_{n=0}^N\frac{1}{n!}f^{(n)}(x_0)(x-x_0)^n,
\end{align}
nous pouvons nous poser la question de la condition pour laquelle cette somme infinie sera finie. En fait, si $f^{(n)}(x_1)$ (pour tout $n$) est finie pour $x_1\in[x_0,x]$, on peut montrer que cette somme infinie convergera toujours vers $f(x)$. Mais nous n'allons pas le faire ici. Nous pouvons assez aisément montrer que la suite générale de la série, elle, converge, ce qui est un premier pas comme nous l'avons vu.

### La somme partielle comme suite

Nous allons d'abord essayer de comprendre comment déterminer si une série converge. Pour cela on va essayer de réutiliser ce qu'on sait des suites. En effet, une somme partielle n'est rien d'autre qu'une suite. Soit $S_n$ la somme partielle de terme général $u_i$
$$
S_n=\sum_{i=0}^nu_i.
$$
On peut dire que $(S_n)_{n=0}^\infty$ est une suite étant donné qu'elle ne dépend que de l'indice $n$. On va pouvoir utiliser les propriétés des suites pour déterminer la convergence des séries.

En particulier, pour déterminer la convergence, ou non, d'une série, on ne s'intéressera qu'à ce qui se passe pour $n$ "grand" (les premiers termes nous laissent indifférents).



# Remerciements

Nous voudrions remercier par ordre alphabétique les étudiants du cours qui a contribué à améliorer ce polycopié. Merci à R. Bach, J. Chételat, T. Pirkl, et J. von der Weid.

[^1]: On dit que $K$ est un corps commutatif.
[^2]: Une autre notation est $\mathbf{A}$.
[^3]: On peut remplacer $\real$ par un autre ensemble, comme $\natural$, $\rational$, ou encore $\complex$.
[^4]: En pratique ce sont des nombre naturels (ou des tuples de nombres naturels) mais pour simplifier considérons que tous les nombres sont réels.
[^5]: On fait une grosse simplification ici. On suppose que $E(x)$ est positif, hors cela n'eat pas nécessairement le cas. Néanmoins, les résultats ci-dessous sont vrais également pour $E(x)$ quelconque.