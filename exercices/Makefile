# FILE=vecteurs
FILE=fun_lin

default:
	pandoc -s -o $(FILE).pdf $(FILE).md --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref --template=../default.latex --pdf-engine pdflatex

