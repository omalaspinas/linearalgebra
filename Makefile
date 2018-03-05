NAME=cours

default: $(NAME).md default.latex
	pandoc -s -o $(NAME).pdf $(NAME).md --highlight-style kate --filter=pandoc-numbering --number-sections --filter=$(PANDOC_CROSSREF)pandoc-crossref --template=./default.latex --pdf-engine pdflatex

latex:
	pandoc -s -smart -o $(NAME).tex $(NAME).md --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref  --template=./default.latex

epub:
	pandoc -s -smart -o $(NAME).epub $(NAME).md --filter=pandoc-numbering  --filter=$(PANDOC_CROSSREF)pandoc-crossref  --template=./default.latex -t epub3

html:
	pandoc -s -o $(NAME).html $(NAME).md --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref --pdf-engine pdflatex --mathml

