# FILE=vecteurs
# FILE=fun_lin
FILE=matrices

default: $(FILE).md
	pandoc -s -o $(FILE).pdf $(FILE).md --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref --template=../default.latex --pdf-engine pdflatex

