# AGENTS.md

This file provides guidance to AI coding agent when working with code in this repository.

## Project Overview

This is a slide presentation project that converts Markdown content (`slides.md`) into multiple presentation formats using Pandoc. The project creates slides for a presentation on "AI and Software Engineering" with support for both web-based (reveal.js) and PDF (LaTeX/Beamer) outputs.

## Build System

The project uses a Makefile-based build system with the following key targets:

### Primary Commands
- `make` or `make all` - Builds all slide formats (HTML and PDF)
- `make slides.pdf` - Creates PDF slides via LaTeX/Beamer
- `make clean` - Removes all generated files and temporary artifacts

### Build Dependencies
- **pandoc** - Document converter (core requirement)
- **mermaid-filter** - NPM package for diagram support (`npm install --global mermaid-filter`)
- **xelatex** - LaTeX engine for PDF generation

## Commit Guidelines

AI must follow the commit message writing guidelines in rules/commit-log.md file.

## Architecture

### Source Files
- `slides.md` - Main presentation content in Markdown format
- `template.tex` - LaTeX Beamer template for PDF generation
- `images/` - Static assets (cover images, diagrams)

### Build Pipeline

`slides.md` → pandoc (beamer) → `slides.tex` → xelatex → `slides.pdf`

### Key Features
- Mermaid diagram support via mermaid-filter
- Korean text support (kotex package in LaTeX template)
- Custom background images and styling
- Multiple presentation themes (moon theme for reveal.js, Berlin theme for Beamer)

## File Structure Notes
- Generated files include `.aux`, `.log`, `.nav`, `.snm`, `.toc`, `.vrb` (LaTeX artifacts)
- Template uses XeLaTeX for Unicode and font support
