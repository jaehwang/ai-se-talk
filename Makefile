SLIDES=slides.revealjs.html slides.pdf

FILTER=--filter mermaid-filter
SLIDE_LEVEL=--slide-level=3 
TOC=--toc=true -V toc-title="Table of Contents"

OPTS=${FILTER} ${SLIDE_LEVEL} ${TOC}

all: ${SLIDES}

slides.revealjs.html: slides.md
	pandoc ${OPTS} -t revealjs --embed-resources --standalone -o $@ -V theme=moon slides.md

slides.tex: slides.md template.tex
	pandoc ${OPTS} -t beamer -V theme:Berlin --template=template.tex --pdf-engine=xelatex -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex; \
	if grep -q "Label(s) may have changed\|Rerun to get cross-references right" slides.log; then \
		echo "Cross-reference warning detected, running xelatex again..."; \
		xelatex slides.tex; \
	fi

clean:
	rm -f ${SLIDES} 
	rm -f slides.tex slides.tex slides.aux slides.log slides.nav \
		slides.snm slides.toc slides.vrb
	rm -f mermaid-filter.err
	rm -f template.fdb_latexmk template.fls template.log template.aux
