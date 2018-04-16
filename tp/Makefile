FILTERS = --filter=pandoc-numbering --filter=pandoc-crossref
TEMPLATE = --template=../default.latex
PDFENGINE = --pdf-engine pdflatex

all: applin

applin: applin.md
	pandoc -s -o $@.pdf $< $(FILTERS) $(TEMPLATE) $(PDFENGINE)

