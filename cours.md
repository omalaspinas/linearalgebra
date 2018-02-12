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
\begin{pmatrix}w_1 \\ \vdots \\ w_n \end{pmatrix}=\begin{pmatrix}u_1 \\ \vdots <\\ u_n \end{pmatrix}+\begin{pmatrix}v_1 \\ \vdots \\ v_n \end{pmatrix}=\begin{pmatrix}u_1+v_1 \\ \vdots \\ u_n+v_n \end{pmatrix}.$$


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

Remarque # 

Il est important de noter que les dimensions de $\vec{u}$ et $\vec{v}$ doivent être les mêmes. Sinon la somme n'est pas définie. L'opération somme en $n$ dimension prend donc deux vecteurs de dimension $n$ et rend un vecteur de dimension $n$ également.

Exemple #

Pour en revenir à l'exemple des octets, il est un peu plus compliqué de définir la somme. En effet, la somme entre des bits peut avoir différentes définitions. Une possibilité est de définir la somme comme le XOR, $\oplus$. 

Pour "sommer" deux octets, $\vec{u},\ \vec{v}\in\{0,1\}^8$ on peut donc définir la somme comme 
$$\vec{u}\oplus\vec{v}=\begin{pmatrix}u_1\oplus v_1 \\ \vdots \\ u_8\oplus v_8 \end{pmatrix}.$$

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
En d'autres termes $u_1=\lambda\cdot v_1$ et $u_2
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

Les vecteurs en deux dimensions à composantes réelles, $\vec{v}\in\real^2$, et les scalaires réels, $\lambda\in\real$, dotés de la somme de la @sec:addition_vec et la multiplication @sec:multiplication_vec forme un espace qui a un certain nombre de propriétés.

### Propriétés de la somme 

Soient $\vec{u},\vec{v},\vec{w}\in\real^2$ deux vecteurs de $\real^2$.

1. La somme est dite *interne*: la somme de deux vecteurs de $\real^2$ reste dans $\real^2$. Ceci se note de la façon suivante
$$
+:\real^2\times\real^2\rightarrow\real^2.
$$
2. La somme est *commutative*
$$\vec{v}+\vec{u}=\vec{u}+\vec{v},$$
soit en composantes
$$\begin{pmatrix}v_1+u_1 \\ v_2+u_2 \end{pmatrix}=\begin{pmatrix}u_1+v_1 \\ v_2+v_2 \end{pmatrix}.
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
3. Elle admet un *élément neutre*, noté $0$ (ou vecteur nul), tel que
$$\vec{u}+0=\vec{u}.$$
4. Tout vecteur $\vec{v}$ admet un *opposé*, noté $-\vec{v}$, tel que
$$\vec{v}+(-\vec{v})=0.$$

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

Il existe un très grand nombre d'espace vectoriel que vous utilisez quotidiennement sans savoir que s'en est un. Nous allons en voir un certain nombre.

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

Exercice #

Montrer que les points 4, 5 et 6 ci-dessus sont bien des espaces vectoriels.

### Combinaisons linéaires

Une des raisons pour laquelle, nous définissons les espaces vectoriels est la possibilité d'effectuer des combinaisons linéaires dans ces espaces. 

Soit un espace vectoriel $E$ sur $K$, muni des opérations "$+$"" et "$\cdot$". 
Soient $\vec v_1, \vec v_2, ..., \vec v_n\in E$ et $\lambda_1,...,\lambda_n\in K$, une combinaison linéaire de $\vec v_1,...,\vec v_n$
$$\sum_{i=1}^n\lambda_i\cdot \vec v_i=\lambda_1\cdot \vec v_1+...+\lambda_n\cdot \vec v_n.$$

A l'aide de la définition de l'espace vectoriel, nous savons que le vecteur résultant de n'importe quelle combinaison linéaire de l'ensemble $E$ sera toujours un élément de $E$. Une question intéressante à se poser à présent, c'est de savoir quel est l'ensemble qu'on peut générer en faisant des combinaisons linéaires d'un ensemble de $\{\vec v_i\}_{i=1}^n$ (cet ensemble de vecteurs s'appelle un *famille de vecteurs*?

Exercice #

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

### Familles libres et liées

Dans les cas 1 et 3, on dit que la famille de vecteurs est *libre*. En d'autres termes, on ne peut pas obtenir un des vecteurs de famille en faisant des combinaisons linéaires des autres vecteurs de la famille. Ils sont *linéairement indépendants*.

A l'inverse 2 et 4, sont des familles liées: on peut obtenir au moins un des vecteurs de la famille par combinaison linéaire des vecteurs de la famille. Ils sont *linéairement dépendants*.

En notation mathématique, si on considère un ensemble $\{\vec v_i\}_{i=1}^n\in E$ et $\{\lambda_i\}_{i=1}^n\in K$ ($E$ est un espace vectoriel sur $K$). Alors on dit que les vecteurs $\vec v_i$ sont *linéairement dépendants* si et seulement si
$$\sum_{i=1}^n\lambda_i \vec v_i=0,$$
avec au moins un $\lambda_i\neq 0$. On peut réécrire cette condition comme
$$\vec v_n=\sum_{i=1}^{n-1}\mu_i \vec v_i,$$
où au moins un des $\mu_i\neq 0$. 

Inversement s'il n'existe pas de $\lambda_i$ non nul tel que 
$$\sum_{i=1}^n\lambda_i \vec v_i=0,$$
alors les vecteurs sont indépendants.

Exercice #

Déterminer si les vecteurs des familles de l'exercice précédent sont linéairement dépendants ou indépendants.

### Base d'espace vectoriel

Soit à présent un ensemble de vecteur $V=\{\vec v_i\}_{i=1}^n$ qui sont linéairement indépendants (c'est une famille libre) et l'ensemble $E$, un espace vectoriel, généré par toutes les combinaisons linéaires de $V$. Alors on dit que l'ensemble $V$ est une *base* de $E$. 

En revanche, si $V$ est une famille liée (ses vecteurs sont linéairement dépendant) et même s'ils génèrent le même ensemble $E$. L'ensemble $V$ ne forme pas une base. Une base est le plus "petit" ensemble de vecteur générant $E$.

Exercice #

Quelles familles de l'exercice 2 forment un base de l'espace généré par les familles?

De façon générale il n'existe pas une base unique d'un espace vectoriel. Dans l'espace $\real^2$, n'importe quelle paire de vecteurs linéairement indépendants forment une base. A contrario, on sait que n'importe quelle famille contenant au moins 3 vecteurs ne formeront pas une base de $\real^2$.


# Les applications linéaires

## Rappel sur les fonctions

Une fonction, notée $f$ (quelle originalité), est une relation entre deux ensembles. Soient deux ensembles $X$ et $Y$, cette fonction va associer tous les éléments de $X$ à un élément de $Y$ (voir la @fig:fonction)

![Une fonction est une relation entre deux ensemble, $X$ et $Y$, qui va relier un point de $X$ avec un point de $Y$.](figs/fonction.pdf){#fig:fonction width=30%}

On note de façon formelle 
$$f:X\rightarrow Y.$$
Ici $X$ est le *domaine de définition* de $f$ et $Y$ est le *domaine d'arrivée*. 
Cette notation nous donne juste le domaine de définition et le domaine d'arrivée de $f$ mais ne nous dit pas quelle est la règle d'association entre les éléments de $X$ et les éléments de $Y$.



[^1]: On dit que $K$ est un corps commutatif.