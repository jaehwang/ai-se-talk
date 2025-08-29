SLIDES=slides.revealjs.html slides.pdf

FILTER=--filter mermaid-filter

all: ${SLIDES}

slides.revealjs.html: slides.md
	pandoc -t revealjs -s ${FILTER} -o $@ -V theme=moon slides.md

slides.tex: slides.md template.tex
	pandoc -t beamer ${FILTER} -V theme:Berlin --template template.tex --pdf-engine=xelatex -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex

clean:
	rm -f ${SLIDES} 
	rm -f slides.tex slides.tex slides.aux slides.log slides.nav \
		slides.snm slides.toc slides.vrb
	rm -f mermaid-filter.err
	rm -f template.fdb_latexmk template.fls template.log template.aux
