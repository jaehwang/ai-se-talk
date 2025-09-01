SLIDES=slides.html slides.pdf slides.vn.html slides.vn.pdf

FILTER=--filter mermaid-filter
SLIDE_LEVEL=--slide-level=3 
TOC=--toc=true -V toc-title="Table of Contents"

OPTS=${FILTER} ${SLIDE_LEVEL} ${TOC}

all: ${SLIDES}

# Keep .tex files
.PRECIOUS: %.tex

# Pattern rules
%.html: %.md
	@[ -d generated ] || mkdir -p generated
	pandoc ${OPTS} -t revealjs --embed-resources --standalone -o $@ -V theme=moon $<

%.tex: %.md template.tex
	@[ -d generated ] || mkdir -p generated
	pandoc ${OPTS} -t beamer -V theme=Berlin --template=template.tex --pdf-engine=xelatex -o $@ $<

%.pdf: %.tex
	xelatex $<; \
	if grep -q "Label(s) may have changed\|Rerun to get cross-references right" $*.log; then \
		echo "Cross-reference warning detected, running xelatex again..."; \
		xelatex $<; \
	fi

clean:
	rm -f ${SLIDES} 
	rm -f slides.tex slides.aux slides.log slides.nav \
		slides.snm slides.toc slides.vrb
	rm -f slides.vn.tex slides.vn.aux slides.vn.log slides.vn.nav \
		slides.vn.snm slides.vn.toc slides.vn.vrb
	rm -f mermaid-filter.err
	rm -f template.fdb_latexmk template.fls template.log template.aux
	rm -rf generated
