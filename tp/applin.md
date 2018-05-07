---
# author:
# - Orestis Malaspinas
title: Travail pratique sur les applications linéaires
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

# Les applications linéaires

Le but de ce travail pratique est de se familiariser avec les applications linéaires et transformations sur les matrices.

Vous êtes libres d'utiliser le langage que vous désirez, cependant, je vous recommande d'utiliser le Python (avec numpy, scipy et matplotlib) ou Matlab/Octave.

Vous devez rendre un rapport qui résume ce que vous avez fait et documente le code avec des exemples d'utilisation et les résultats demandés.

Le travail doit être effectué par groupe de deux (n'oubliez pas de mentionner les deux noms sur le rapport et dans le code). 
Déposez le rapport et le code sur le site du cours s'il vous plaît, cela simplifie mon administration (et évite les problèmes avec les étudiants qui 
ne mettent pas de nom sur le rapport...).

La note sera une combinaison entre le code rendu et le rapport (moitié/moitié). 

## Calcul du déterminant

1. Écrire une fonction qui calcule le déterminant d'une matrice $n\times n$. Validez vos résultats sur des résultats connus et sur le résultat obtenu avec une librairie (par exemple la fonction de numpy `numpy.linalg.det`).
2. Mesurez la complexité de votre calcul (mesurez le temps d'exécution) pour différentes tailles de matrices et vérifiez si vous avec la complexité théorique.
3. Comparez les performances de votre code avec celui de la librairie NumPy.

## Interpolation bilinéaire

Vous trouverez la théorie pour implémenter cette partie dans le polycopié du cours. 

1. Charger une image (de préférence en niveaux de gris pour simplifier) et l'afficher / la sauvegarder.
2. Implanter une fonction *zoom* qui multiplie la taille de l'image d'un nombre réel strictement positif et afficher le résultat. Lorsque cette opération est effectuée 
les pixels de l'image d'origine ne vont plus coïncider avec les nouveaux pixels que vous voudrez afficher et vous devrez donc interpoler leur valeur avec la fonction 
d'interpolation bilinéaire que vous aurez implantée.

## Filtre

Vous trouverez la théorie pour implémenter cette partie dans le polycopié du cours. 

1. Charger une image (de préférence en niveaux de gris pour simplifier) et l'afficher / la sauvegarder (pareil que pour la section précédente).
2. Implanter une fonction qui effectue un filtre (voir les noyaux de convolution sur <https://en.wikipedia.org/wiki/Kernel_(image_processing)>)
et affiche / sauvegarde l'image obtenue.

