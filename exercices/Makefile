FILTERS = --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref
TEMPLATE = --template=../default.latex
PDFENGINE = --pdf-engine pdflatex

all: matrix_inverse matrice_rot matrices fun_lin vecteurs

matrix_inverse: matrix_inverse.md
	pandoc -s -o $@.pdf $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

matrice_rot: matrice_rot.md
	pandoc -s -o $@.pdf $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

matrices: matrices.md
	pandoc -s -o $@.pdf $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

fun_lin: fun_lin.md
	pandoc -s -o $@.pdf $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

vecteurs: vecteurs.md
	pandoc -s -o $@.pdf $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

