# AI와 Software 개발 협업하기

AI와 소프트웨어 개발 협업에 대한 세미나 발표 자료입니다.

## 개요

이 프로젝트는 Markdown으로 작성된 슬라이드 콘텐츠를 Pandoc을 사용하여 여러 프레젠테이션 형식으로 변환합니다. 웹 기반(reveal.js)과 PDF(LaTeX/Beamer) 출력을 모두 지원합니다.

## 다국어 지원

프로젝트는 3개 언어로 된 슬라이드를 제공합니다:

- `slides.md` - 한국어 (원본)
- `slides.en.md` - 영어
- `slides.vn.md` - 베트남어

## 사전 요구사항

### 필수 도구
- **pandoc** - 문서 변환기 (핵심 요구사항)
- **mermaid-filter** - 다이어그램 지원용 NPM 패키지
- **xelatex** - PDF 생성용 LaTeX 엔진

### 설치

```bash
# mermaid-filter 설치
npm install --global mermaid-filter

# macOS에서 pandoc과 LaTeX 설치
brew install pandoc
brew install --cask mactex

# Linux에서 pandoc과 LaTeX 설치
brew install pandoc
brew install texlive
```

## 사용법

### 빌드 명령어
```bash
# 모든 슬라이드 형식 빌드 (HTML + PDF, 모든 언어)
make

# 또는
make all

# 특정 언어 슬라이드 생성
make slides.pdf          # 한국어 PDF
make slides.en.pdf       # 영어 PDF  
make slides.vn.pdf       # 베트남어 PDF

make slides.html         # 한국어 HTML
make slides.en.html      # 영어 HTML
make slides.vn.html      # 베트남어 HTML

# 생성된 파일 및 임시 파일 정리
make clean
