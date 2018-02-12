default:
	pandoc -s -o cours.pdf cours.md --highlight-style kate --filter=pandoc-numbering --number-sections --filter=$(PANDOC_CROSSREF)pandoc-crossref --template=./default.latex --pdf-engine pdflatex

latex:
	pandoc -s -smart -o cours.tex cours.md --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref  --template=./default.latex

epub:
	pandoc -s -smart -o cours.epub cours.md --filter=pandoc-numbering  --filter=$(PANDOC_CROSSREF)pandoc-crossref  --template=./default.latex -t epub3

html:
	pandoc -s -o cours.html cours.md --filter=pandoc-numbering --filter=$(PANDOC_CROSSREF)pandoc-crossref --pdf-engine pdflatex --mathml

