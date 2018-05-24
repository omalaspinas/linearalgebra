FILTERS = --filter=pandoc-numbering --filter=pandoc-crossref
TEMPLATE = --template=../default.latex
PDFENGINE = --pdf-engine pdflatex

all: interp_bilineaire.pdf systeme_eq.pdf determinants.pdf matrix_inverse.pdf matrice_rot.pdf matrices.pdf fun_lin.pdf vecteurs.pdf

interp_bilineaire.pdf: interp_bilineaire.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

systeme_eq.pdf: systeme_eq.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

determinants.pdf: determinants.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

matrix_inverse.pdf: matrix_inverse.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

matrice_rot.pdf: matrice_rot.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

matrices.pdf: matrices.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

fun_lin.pdf: fun_lin.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

vecteurs.pdf: vecteurs.md
	pandoc -s -o $@ $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

