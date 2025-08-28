SLIDES=slides.s5.html slides.revealjs.html slides.pdf

FILTER=--filter mermaid-filter

all: ${SLIDES}

slides.s5.html: slides.md
	pandoc -t s5 -s ${FILTER} -o $@ slides.md -V s5-url=s5-11/ui/default

slides.revealjs.html: slides.md
	pandoc -t revealjs -s ${FILTER} -o $@ -V theme=moon slides.md

slides.pdf: slides.md template.tex
	pandoc -t beamer ${FILTER} --template template.tex --pdf-engine=xelatex -o $@ slides.md

clean:
	rm -f ${SLIDES}
	rm -f mermaid-filter.err
	rm -f template.fdb_latexmk template.fls template.log
