[![Build Status](https://travis-ci.org/mathintro/linearalgebra.svg?branch=master)](https://travis-ci.org/mathintro/linearalgebra)

# Cours d'algèbre linéaire ITI (1ère année)

Ce projet contient la tentative de polycopié du cours de Mathématiques pour la filière ITI de hepia. Vous pouvez accéder au polycopié dans votre navigateur en cliquant sur [`ce lien`](https://mathintro.github.io/linearalgebra/). 

# Production d'un pdf

Le projet est écrit à l'aide de la librairie [`pandoc`](https://pandoc.org/installing.html) dans laquelle on peut inclure du `LaTeX`. 

Afin de compiler le projet vous avez besoin des programmes suivants:

## [`imagemagick`](http://www.imagemagick.org/script/index.php)

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


## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (GNU Free Documentation License).