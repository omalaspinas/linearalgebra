---
# author:
# - Orestis Malaspinas
title: Séries
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
\renewcommand{\natural}{\mathbb{N}}

Série d'exercices {#series .unnumbered}
=================

Exercice #

Déterminer si les séries suivantes convergent ou divergent

1. 
$$
\sum_{n=0}^\infty \left(\frac{2^n-1}{3^n+1}\right).
$$
2.
$$
\sum_{n=0}^\infty \frac{\log(n+4)}{n+1}.
$$
3.
$$
\sum_{n=0}^\infty \left(\frac{1}{n^3+1}\right).
$$
4.
$$
\sum_{n=0}^\infty \left(\frac{1}{(n+1)^3}\right).
$$  
5.
$$
\sum_{n=0}^\infty \left(\frac{1}{n^\alpha+1}\right),
$$ 

	- Pour $\alpha\geq 2$.
	- Pour $\alpha \leq 1$.
	- Pour $\alpha\in]1,2[$. (Pas besoin de démonstration, juste d'un avis.)

Exercice #

Démontrer le critère suivant:

**Critère de d'Alembert**

Soit $(u_n)_{n=0}^\infty$ une suite réelle à termes positifs. Si 
$$
\lim_{n\rightarrow\infty} \left(\frac{u_{n+1}}{u_n}\right)=l,\ l\in\real^+,
$$
alors 

1. Si $l<1$, alors la série converge.
2. Si $l>1$, alors la série diverge.
3. Que se passe-t-il pour $l=1$? 


**Indications**

1. Pour $l<1$, il faut montrer que $u_n\leq r^n$ (pour un certain $r<1$), $\forall n > n_0$, $n_0\in\natural$.
2. Pour $l>1$, il faut montrer que $u_n\geq r^n$ (pour un certain $r>1$), $\forall n > n_0$, $n_0\in\natural$.
3. Considérer les séries de termes généraux $u_n=1/(1+n)$ et $v_n=1/(1+n)^2$.
