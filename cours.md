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
\newcommand{\mat}[1]{{\underline{\underline{#1}}}}
\newcommand{\mattwo}[4]{\begin{pmatrix}
								#1 & #2 \\
								#3 & #4
						\end{pmatrix}}

# Rappel sur les espaces vectoriels

## Les vecteurs

Si nous nous plaçons sur une carte à un endroit donné (appelé l'origine) et que nous prenons notre voiture pour nous déplacer, notre destination ne peut être uniquement décrite si nous ne connaissons que la distance parcourue (voir par exemple la carte @fig:depl_vec). En d'autres termes pour notre carte, nous savons que nous irons à la campagne, mais pas si nous allons à Lausanne ou dans le Jura). Un déplacement n'est donc pas uniquement déterminé par le point d'origine et un scalaire. Il est nécessaire d'avoir une information supplémentaire. Dans le cas de la @fig:depl_vec le déplacement est décrit uniquement par la flèche, ou *vecteur*, qui a une longueur (la distance parcourue) et une direction (la direction de la flèche).

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

---

Remarque +.#

Ici un vecteur se représente comme une liste de taille finie de nombres et la dimension du monde dans lequel vit se vecteur est la taille de la liste. Un vecteur de façon plus générale peut vivre dans un monde de dimension quelconque, y compris infinie.

---

---

Remarque +.#

Ici nous n'avons considéré que des vecteurs vivant dans $\real^n$. On peut en fait considérer n'importe quel ensemble $D\subseteq \real$ et construire des vecteurs de dimension $n$ vivant dans $D^n$.

---

---

Illustration +.#

Un octet (une séquence de huit bits, comme son nom l'indique) constitue un vecteur qui vit dans $\{0,1\}^8$.

---

## L'addition de vecteurs {#sec:addition_vec}

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
\begin{pmatrix}w_1 \\ \vdots \\ w_n \end{pmatrix}=\begin{pmatrix}u_1 \\ \vdots \\ u_n \end{pmatrix}+\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix}=\begin{pmatrix}u_1+v_1 \\ \vdots \\ u_n+v_n \end{pmatrix}.$$

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
>>> u = [1.0, 2.0, 3.0]
>>> v = [2.0, 3.0, 4.0]
>>> w = [0.0, 0.0, 0.0]
>>> for i in range(3): # loop based syntax for vector addition
...     w[i]=a[i] + b[i]
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

![Le produit entre un scalaire $\lambda$ et un vecteur $\vec{v}$ est une dilatation du vecteur $\vec{v}$. Le cas où $\lambda$ est négatif change également l'orientation du vecteur.](figs/produit_vecteur.pdf){#fig:multiplication width=30%}

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

Soient $\vec{u},\vec{v},\vec{w}\in\real^2$ deux vecteurs de $\real^2$.

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

1. La multiplication par un scalaire d'un vecteur est dite *externe*: le produit entre un scalaire et d'un vecteur de $\real^2$ reste un vecteur de $\real^2$.

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
3. L'espace des réels est un espace vectoriel sur les réels.
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

Quelles familles de l'exercice 2 forment un base de l'espace généré par les familles?

---

De façon générale il n'existe pas une base unique d'un espace vectoriel. Dans l'espace $\real^2$, n'importe quelle paire de vecteurs linéairement indépendants forment une base. A contrario, on sait que n'importe quelle famille contenant au moins 3 vecteurs ne formeront pas une base de $\real^2$.

# Les applications linéaires

## Rappel sur les fonctions

Une fonction, notée $f$ (quelle originalité), est une relation entre deux ensembles. Soient deux ensembles $X$ et $Y$, cette fonction va associer tous les éléments de $X$ à un élément de $Y$ (voir la @fig:fonction)

![Une fonction est une relation entre deux ensemble, $X$ et $Y$, qui va relier un point de $X$ avec un point de $Y$.](figs/fonction.pdf){#fig:fonction width=30%}

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
Définissons un triangle relie les trois points
$$P_0=(0,0),\quad P_1=(1,0),\quad P_2=(0,1).$$
Les positions $P_0$, $P_1$ et $P_2$ suffisent pour décrire le triangle.
Cependant afin de les dessiner, il peut être utile de connaître également
les équations des segments reliant les points. Cela peut se faire via les vecteurs, $\vec x_0$, $\vec x_1$ et $\vec x_2$, reliant l'origine aux points $(voir la @fig:triangle)
$$\vec x_0=\vectwo{0}{0},\quad \vec x_1=\vectwo{1}{0},\quad \vec x_2=\vectwo{0}{1}.$${#eq:vec_rot}

![Les points $P_0$, $P_1$, et $P_2$. Les vecteurs $\vec x_1$ et $\vec x_2$.](figs/triangle.pdf){#fig:triangle width=30%}

Les équations paramétriques des segments reliant les points peuvent s'écrire en
$$\begin{aligned}
\vec s_0&=\lambda\cdot \vec x_1,\quad &\lambda\in[0,1],\\
\vec s_1&=\lambda\cdot \vec x_2,\quad &\lambda\in[0,1],\\
\vec s_2&=\lambda\cdot \vec x_1+(1-\lambda)\cdot \vec x_2,\quad &\lambda\in[0,1].
\end{aligned}$$
Ces trois vecteurs sont des *combinaisons linéaires* des vecteurs $\vec x_1$ et $\vec x_2$. Finalement, le triangle peut donc s'écrire comme l'ensemble des trois segments
$$\triangle=\{\vec s_0, \vec s_1, \vec s_2\}.$$

![Les segments $\vec s_0$, $\vec s_1$, et $\vec s_2$ relient les sommets des triangles. On peut exprimer leur équations paramétriques à l'aide des vecteurs $\vec x_1$, $\vec x_2$.](figs/triangle_seg.pdf){#fig:triangle_seg width=30%}

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

![Après application de la fonction linéaire $R$, les segments $\vec s_0'$, $\vec s_1'$, et $\vec s_2'$ relient les sommets des triangles qui peuvent être représents par les vecteurs $\vec x_0'$, $\vec x_1'$ et $\vec x_2'$](figs/triangle_rot.pdf){#fig:triangle_rot width=30%}

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

![Après application de la fonction linéaire $D$, les segments $\vec s_0'$, $\vec s_1'$, et $\vec s_2'$ relient les sommets des triangles qui peuvent être représents par les vecteurs $\vec x_0'$, $\vec x_1'$ et $\vec x_2'$](figs/triangle_dil.pdf){#fig:triangle_dil width=30%}

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

![L'effet de l'application non-linéaire $g$ sur le triangle constitué des points $P_0,P_1,P_2$.](figs/triangle_non_lin.pdf){#fig:triangle_non_lin width=30%}

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
$$\mat{A}=\begin{pmatrix} 1 & \textcolor{red}{2} & 3 \\ 2 & 3 & 4 \end{pmatrix},$$
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

![La fonction $f$ applique les éléments de $E$ dans un sous-espace de $V$, noté $\mathrm{Im}_E(f)$.](figs/fonction_image.pdf){#fig:fonction_image width=30%}

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

![On cherche le sous-ensemble $X$ de $E$ tel que les images de $X$ sont dans $Y$ qui est un sous-ensemble de $V$.](figs/fonction_preimage.pdf){#fig:fonction_preimage width=30%}

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

![La droite (en trait-tillés) générée par le vecteur $\vec x=(-2,1)^\mathrm{T}$ (en trait plein).](figs/preimage_droite.pdf){#fig:preimage_droite width=50%}

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

![Le point noir est relié à l'unique point magenta et donc on aurait une unique solution à l'équation $f(\vec x)=\vec y$. En revanche les points bleu et rouge ont tous les deux la même image. Il y aurait donc deux solutions à l'équation $f(\vec x)=\vec y$ dans ce cas là.](figs/unique_inv.pdf){#fig:unique_inv width=50%}

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
nous aurions $\mat{F_3}\cdot\mat{F_2}\cdot\mat{F_1}\mat{A}=\mat{I}_3$. De même sur l'identité, nous aurions $\mat{F_3}\cdot\mat{F_2}\cdot\mat{F_1}\mat{I}_3=\mat{A}^{1-}$. On constate donc qu'en effctuant les mêmes transformations linéaires que nous avons effectuées sur $\mat{A}$, mais sur $\mat{I}_3$, nous calculons directement l'inverse $\mat{A}^{-1}$.

# Remerciements

Je voudrais remercier par ordre alphabétique les étudiants du cours qui a contribué à améliorer ce polycopié. Merci à R. Bach, J. Chételat, et T. Pirkl.

[^1]: On dit que $K$ est un corps commutatif.
[^2]: Une autre notation est $\bm{A}$.
[^3]: On peut remplacer $\real$ par un autre ensemble, comme $\natural$, $\rational$, ou encore $\complex$.
