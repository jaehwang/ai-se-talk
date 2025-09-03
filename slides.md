---
title: AI 협업을 통한 소프트웨어 개발
subtitle: 속도와 완벽, 둘 다 잡는 기술
author: 김재황
date: 2025년 9월 3일
paginate: true
header-includes:
  - |
    ```{=revealjs}
    <style>
    .reveal {
        font-size: 28px; /* 기본값은 보통 40px */
    }
    .reveal h1 { font-size: 2.5em; }
    .reveal h2 { font-size: 2.11em; }
    .reveal h3 { font-size: 1.55em; }
    /* 목차 스타일 */
    .reveal #TOC ul {
        font-size: 0.8em;
        line-height: 1.2;
        column-count: 2;
        column-gap: 2em;
    }
    .reveal #TOC li {
        break-inside: avoid;
        margin-bottom: 0.3em;
    }
    </style>
    ```
    ```{=latex}
    \usepackage{kotex}
    \usepackage{zref-totpages}
    \usebackgroundtemplate{%
      \ifnum\thepage=1%
        \includegraphics[width=\paperwidth,height=\paperheight]{images/cover2.jpg}%
      \else%
        \ifnum\thepage=2%
          \includegraphics[width=\paperwidth,height=\paperheight]{images/toc_qna.jpg}%
        \else%
          \ifnum\thepage=\ztotpages%
            \includegraphics[width=\paperwidth,height=\paperheight]{images/toc_qna.jpg}%
          \else%
            % 나머지 페이지 배경 미지정
          \fi%
        \fi%
      \fi%
    }
    \setbeamertemplate{footline}[frame number]
    ```
---

## 자기 소개

### 고품질 소프트웨어를 저비용으로 만들자

:::::::::::::: {.columns}
::: {.column width="70%"}
* 2020: VS본부 Engineering System개발
* 2018: 연구위원
* 2015: 전사 소프트웨어 아키텍트 프로그램
* 2012: 전사 소프트웨어 협업 환경
    - Collaboration Center: Collab, xLM, Harmony, Mod, ...
* 2006: CTO부문 경력 입사
:::
::: {.column width="30%"}
![Atlassian Summit 2012](images/atlas_lg.jpg)
:::
::::::::::::::

## AI를 이용한 소프트웨어 개발

### AI v.s Human

* _"Microsoft to Lay Off About 9,000 Employees"_
   - New York Times. July 2025

* _"You're not going to lose a job – your job to an AI, but you're going to lose your job to somebody who uses AI"_
   - Jensen Huang, May 2025

### Problem: 요구 사항

나이, 키, 몸무게 데이터를 입력으로 받아서 히스토그램을 출력한다.

| 번호 | 이름   | 나이 | 키(cm) | 몸무게(kg) |
|------|--------|------|--------|------------|
| 1    | 김철수 | 25   | 175    | 72         |
| 2    | 이영희 | 32   | 162    | 55         |
| 3    | 박민준 | 19   | 180    | 78         |
| 4    | 최지은 | 28   | 158    | 52         |
| 5    | 정대호 | 45   | 172    | 80         |

### Solution: Gen AI & Prompt

나이, 키, 몸무게 데이터를 입력받아서 각각의 히스토그램을 그리는 파이썬 프로그램을 작성해주세요.

* Chart 요구사항
    - 나이: 10세 단위 (0-9세, 10-19세, 20-29세, 30-39세, ...)
    - 키: 10cm 단위 (150-159cm, 160-169cm, 170-179cm, ...)
    - 몸무게: 10kg 단위 (40-49kg, 50-59kg, 60-69kg, ...)
* 설계
    - matplotlib 사용하여 히스토그램 생성
    - 각 히스토그램에 구간 범위를 명확히 표시
* Test Cases
    - ...

### 좋은 프롬프트 작성 방법

* Clear specification = Requirements definition
* Step-by-step explanation = Algorithm decomposition
* Providing examples = Test cases
* Context management = Task decomposition

### AI 동료

:::::::::::::: {.columns}
::: {.column width="60%"}
![AI Team Mate](images/ai_mate.jpg)
:::
::: {.column width="40%"}
"AI를 도구가 아니라 팀메이트로 대하세요."
:::
::::::::::::::

제레미 어틀리 교수, 스탠포드 대학교  

* 출처: YouTube [Link](https://youtu.be/rSS5yM74zeo?si=oPMib-EkOBtdxFkg)

### Prompt: Higher Level Language?

- Prompt
- Python, C/C++
- Assembly 
- Machine Code 
- ...

## Software Engineering

### Problem & Solution

인구조사 집계 시간을 8년(1880년)에서 3년(1890년)으로 단축

:::::::::::::: {.columns}
::: {.column width="40%"}
![1890: Hollerith Tabulating System](images/hh-tabulator.jpg)
:::
::: {.column width="60%"}
- 1896\. Tabulating Machine Company
- 1911\. CTR (Computing Tabulating Recording Company)
- 1924\. IBM (International Business Machines)
:::
::::::::::::::

### Software Crisis

> The major cause of the software crisis is that the machines
> have become several orders of magnitude more powerful!
> ...
> and now we have gigantic computers, programming has
> become an equally gigantic problem.
>
> - Edsger Dijkstra, The Humble Programmer. 1972

### Software Engineering

Handling complexity.

* Software Process: Analysis, design, coding, testing, maintenance
* Software Architecture: Bridge between requirements and implementation
* Agile Practices: Code review, unit test, CI/CD, ...
* ...

### Knuth's Literate Programming

_"Programs are meant to be read by humans and only incidentally for computers to execute."_

```cweb
@<Include files@>=
main() {
  @<Print a greeting@>;
}
@<Print a greeting@>=
printf("Greetings ... to\n"); /* Hello, */
@ Since we're using the |printf| routine,
@ we had better include the standard input/output 
@ header file.
@<Include files@>=
#include <stdio.h>
```

## AI Agent 길들이기

AI 코딩 어시스턴트가 일관된 품질과 스타일로 작업할 수 있도록 종합적인 instruction 시스템을 제공해야 함

* 참고 프로젝트: [Link](https://github.com/jaehwang/arith_lang)

### 디렉토리 구조

```
project_root/
├── .github/
│   └── copilot-instructions.md      # GitHub Copilot
├── .clinerules/
│   └── cline-instructions.md        # Cline 지침
├── CLAUDE.md                        # Claude Code
├── AGENTS.md                        # 메인 instruction
├── memory-bank/                     # 세션 간 연속성
└── rules/                           # 코드 품질 규칙
```

### .github/copilot-instructions.md

```
---
applyTo: "**"
---
# Copilot Instructions

You must follow instructions in AGENTS.md 
when working with code in this repository.
```

### AGENTS.md


    # AGENTS.md
    ...
    ## Project Overview
    ...
    ## Build System
    ...
    ## Commit Guidelines
    ...
    ## ARchitecture
    ...

### Memory Bank 시스템

AI 에이전트의 세션 간 연속성을 보장하기 위한 문서화 시스템:

```{.mermaid loc=generated}
flowchart TD
    PB[projectbrief.md] --> PC[productContext.md]
    PB --> SP[systemPatterns.md]
    PB --> TC[techContext.md]

    PC --> AC[activeContext.md]
    SP --> AC
    TC --> AC

    AC --> P[progress.md]
```
---

* **projectbrief.md**: 프로젝트 기본 요구사항과 목표
* **productContext.md**: 프로젝트 존재 이유와 사용자 경험 목표
* **activeContext.md**: 현재 작업 포커스와 최근 변경사항
* **systemPatterns.md**: 시스템 아키텍처와 기술적 결정사항
* **techContext.md**: 사용 기술과 개발 환경 설정
* **progress.md**: 현재 상태와 남은 작업

### AI Agent 사용 워크플로우

1. **세션 시작시**: Memory Bank 파일 확인, instruction 파일 확인
2. **코드 작업시**: anchor comments 규칙 적용
3. **커밋 작업시**: commit message 가이드라인 준수
4. **세션 간 연속성**: Memory Bank로 작업 진척과 컨텍스트 유지

### 장점

* **일관성**: 여러 AI 에이전트 간 동일한 코드 품질 보장
* **연속성**: Memory Bank를 통한 세션 간 컨텍스트 유지
* **확장성**: 새로운 AI 도구 추가시 AGENTS.md 참조만으로 통합 가능
* **유지보수성**: 중앙집중식 규칙 관리로 일관된 업데이트 

## AI 협업: 대규모 작업 수행

AI를 이용한 개발에서 큰 Task를 Sub Task로 나눠 진행하기 위한 효과적인 방법이 필요함

### 의도 이탈(Drift) 문제

* **AI Coding의 도전 과제:**
    - Keeping agents on track through long, complex tasks
* **Drift 예시 - Context 크기 제약:**
    - 초기 목표: "대규모 레거시 코드베이스에 새 기능 추가"
    - 문제: 전체 코드베이스가 AI 컨텍스트 윈도우를 초과
    - 결과: AI가 부분적 정보로 작업하다 기존 아키텍처와 불일치하는 코드 생성

### 핵심 원칙

1. **단일 진실의 원천(SoT)**: 요구사항, 설계, 테스트를 포함한 명세
2. **Sub Task**: 명세를 구현 가능한 작업 단위로 분할
3. **지속적 드리프트 감지**: 구현과 테스트 반복
4. **단계 경계 = 커밋 경계**: 각 sub task마다 커밋

### 디렉토리 구조

```
project_root/
├── .github/
│   ├── copilot-instructions.md      # GitHub Copilot
│   └── prompts/
│       └── deep-planning.prompt.md  # Deep Planning
├── specs/             # SoT: 요구사항, 설계, 테스트 명세
├── src/               # 소스 코드
├── tests/             # 테스트 코드
```

### 사례(1/2): 변수 시스템 명세

**specs/variables.md** (명세)

- 불변(immutable-by-default), `mut`로 명시적 가변 선언
- 섀도잉 허용, 재할당은 타입 일치 강제
- 정밀 진단 메시지

### 사례(2/2): 작업 계획

1. **.github/prompts/deep-planning.prompt.md**를 GitHub Copilot에서 활용:

        /deep-planning specs/variables.md 문서를 바탕으로 
        구현 계획을 만들어서 plans/mut-implementation-plan.md
        파일에 저장해 줘.

    - → `plans/mut-implementation-plan.md` 생성

2. **plans/mut-implementation-plan.md**의 구현 순서에 따라 구현, 검증 수행:
    - 4단계 구현 순서: `mut` 토큰 처리  → Symbol Table 확장 → 타입 검사 → 에러 메시지

### 전체 워크플로 정리

:::::::::::::: {.columns}
::: {.column width="33%"}
**준비**

- 프로젝트 규칙 준수
- SoT 지정 (specs/)
- 계획 수립 (plans/)
:::
::: {.column width="33%"}
**실행 루프**

- Sub Task 구현
- 테스트 작성과 실행
- 드리프트 감지와 교정
- 커밋
:::
::: {.column width="33%"}
**종료**

- 회귀 테스트
- 변경 기록
:::
::::::::::::::

## Epilogue

### AI와 협업: Plain Text

- AI와 사람이 공유하기 쉬울 수록 AI와 사람의 협업이 촉진될 수 있음
- 이 슬라이드는 Markdown 문서를 PDF, HTML로 변환하여 만들어 졌음
    * [Link](https://github.com/jaehwang/ai-se-talk) 참고

```Makefile
slides.tex: slides.md template.tex
	pandoc -t beamer ${FILTER} -V theme:Berlin \
      --template=template.tex --pdf-engine=xelatex 
      -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex
 ```

## Q&A
