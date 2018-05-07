all: cours.pdf cours.html

cours.pdf: cours.md default.latex
	pandoc -s -o  $@ $< --toc --highlight-style kate --filter=pandoc-numbering --number-sections --filter=pandoc-crossref --template=./default.latex --pdf-engine pdflatex

# cours.epub: cours.md default.latex
# 	pandoc -s -o  $@ $< --toc --highlight-style kate --filter=pandoc-numbering --number-sections --filter=pandoc-crossref --template=./default.latex  --pdf-engine pdflatex -t epub3

cours.html: cours.md Makefile
	pandoc -s -o $@ $< --filter=pandoc-numbering --filter=pandoc-crossref --pdf-engine pdflatex --mathjax -t html5 -c css/styling.css

clean:
	rm -rf cours.pdf cours.html cours.epub

