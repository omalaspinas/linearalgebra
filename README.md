[![Build Status](https://travis-ci.org/mathintro/linearalgebra.svg?branch=master)](https://travis-ci.org/mathintro/linearalgebra)

# Cours d'algèbre linéaire ITI (1ère année)

Ce projet contient la tentative de polycopié du cours de Mathématiques pour la filière ITI de hepia.

# Production d'un pdf

Le projet est écrit à l'aide de la librairie [`pandoc`](https://pandoc.org/installing.html) dans laquelle on peut inclure du `LaTeX`. 

Afin de compiler le projet vous avez besoin des programmes suivants:

## make

## pandoc (v2.0 ou plus récent)

Il existe un certain nombre de pckage pour la plupart des distributions linux et aussi pour mac OS ou windows. Consultez le site de [`pandoc`](https://pandoc.org/installing.html) pour plus d'informations concernant l'installation.

## pandoc-crossref 

En supposant que la [plateforme de développement Haskell](http://hackage.haskell.org/platform/) est déjà installée vous pouvez installer pandoc-crossref avec cabal:

``` bash
cabal update
cabal install pandoc-crossref
```

Ou alors vous pouvez également installer les fichiers binaires
```bash
mkdir pandoc-crossref
cd pandoc-crossref
wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.0.1/linux-ghc80-pandoc20.tar.gz
tar xzvf linux-ghc80-pandoc20.tar.gz
export PATH=`pwd`:$PATH
```

Sinon allez voir sur le [site de `pandoc-crossref`](https://github.com/lierdakil/pandoc-crossref).
	
## pandoc-numbering

Vous avez besoin d'une installation de python 2.7 ou 3.X, du programme `pip`, et vous pouvez faire

``` bash
sudo pip install -U pip panflute pandocfilters  pandoc-numbering
```

Pour plus d'information voir le [site](https://pypi.python.org/pypi/pandoc-numbering).

## Des packages latex suivant (pour ubuntu ou debian-like)

```sudo apt-get install texlive-latex-recommended lmodern texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra dvipng texlive-latex-recommended texlive-lang-french```

# Le cours est structuré comme suit

Rappel sur les vecteurs et espaces vectoriels
=======================

Les applications linéaires
==========================

### Qu'est-ce qu'une application linéaire?

#### Définition et propriétés

#### Exemples (rotations)

### Matrices et applications linéaires

#### Applications linéaires comme produit matrice-vecteur

#### Image d'une application linéaire

#### Inverse d'une application linéaire

#### Addition matricielle et produit avec un scalaire

#### Exemples: dilatations, réflexions et rotations

### Composition d'applications linéaires

#### Introduction générale

#### Multiplication matricielle et propriétés (associativité, distributivité)

### Inverse d'une application linéaire

#### Inversibilité

#### Injectivité, surjectivité et inversibilité

#### Trouver les solutions de l'équation Ax = b

### Méthode d'inversion de matrice

### Exemple

### Déterminant


## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (GNU Free Documentation License).