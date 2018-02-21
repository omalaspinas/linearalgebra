---
# author:
# - Orestis Malaspinas
title: Exercices sur les espaces vectoriels et applications linéaires
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

Est-ce que l'ensemble des mots de deux bits 
$$E=\{\vec v=\{v_1, v_2\} | v_1,v_2\in \{0,1\}\},$$
sur l'ensemble des bits $K=\{0,1\}$ forme un espace vectoriel avec
l'addition étant définie comme le XOR, et le produit usuel?
Si oui, pouvez-vous me donner une base de cet espace vectoriel?

Exercice #

Parmi les fonctions suivantes, lesquelles sont des fonctions linéaires:

1.
$$ 
\begin{aligned}
&f:\real\rightarrow \real,\\
&f:x\rightarrow 2\cdot x.
\end{aligned}
$$

2.
$$ 
\begin{aligned}
&f:\real\rightarrow \real,\\
&f:x\rightarrow 2\cdot x+1.
\end{aligned}
$$

3.
$$ 
\begin{aligned}
&f:\real\rightarrow \real,\\
&f:x\rightarrow 2\cdot x^2.
\end{aligned}
$$

4. 
$$
\begin{aligned}
&f:\real^2\rightarrow \real^2,\\
&f:\vectwo{x_1}{x_2}\rightarrow \vectwo{x_1}{x_2}+\vectwo{2}{0}.
\end{aligned}
$$

\newpage

Exercice #

Soit le triangle de départ comme sur la @fig:triangle.

![Un triangle de départ bleu](../figs/triangle_seg_bw.pdf){#fig:triangle width=30%}

Les triangles rouges des @fig:triangleLinA, @fig:triangleLinB, @fig:triangleLinC, et @fig:triangleLinD sont-elles obtenues via des transformations linéaires du triangle bleu?

<div id="fig:triangleLin">

![](../figs/triangle_dil_bw.pdf){#fig:triangleLinA width=25%}
![](../figs/triangle_tra_bw.pdf){#fig:triangleLinB width=30%}

![](../figs/triangle_def_bw.pdf){#fig:triangleLinC width=25%}
![](../figs/triangle_dil_rot_bw.pdf){#fig:triangleLinD width=25%}

Soit le triangle bleu de départ. Après transformation on obtient le triangle rouge. Ces transformations sont-elles linéaires? 

</div>


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

