
STYLES := css/tufte-css/tufte.css \
	css/pandoc.css \
	css/pandoc-solarized.css \
	css/tufte-extra.css

all: cours.pdf cours.html

cours.pdf: cours.md default.latex
	cd figs; ./convert.sh
	pandoc -s -o  $@ $< --toc --highlight-style kate --filter=pandoc-numbering --number-sections --filter=pandoc-crossref --template=./default.latex --pdf-engine pdflatex

# cours.epub: cours.md default.latex
# 	pandoc -s -o  $@ $< --toc --highlight-style kate --filter=pandoc-numbering --number-sections --filter=pandoc-crossref --template=./default.latex  --pdf-engine pdflatex -t epub3

cours.html: cours.md Makefile
	cd figs; ./convert.sh
	pandoc -o $@ $< --toc --filter=pandoc-numbering --filter=pandoc-crossref --pdf-engine pdflatex -t html5 -c css/styling.css --self-contained --mathjax=MathJax.js

clean:
	rm -rf cours.pdf cours.html cours.epub

