---
title: AI and Software Engineering
subtitle: Higher Level Language, Prompt
author: Jaehwang Kim
date: September 3, 2025
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
    </style>
    ```
    ```{=latex}
    \usepackage{kotex}
    \usebackgroundtemplate{%
      \ifnum\thepage=1%
        \includegraphics[width=\paperwidth,height=\paperheight]{images/cover2.jpg}%
      \else%
        % 다른 페이지는 기본 배경
      \fi
    }
    ```
---

## AI v.s Human

* _"Microsoft to Lay Off About 9,000 Employees"_
   - New York Times. July 2025

* _"You're not going to lose a job – your job to an AI, but you're going to lose your job to somebody who uses AI"_
   - Jensen Huang, May 2025

## Problem: 요구 사항

나이, 키, 몸무게 데이터를 입력으로받아서 히스토그램을 출력한다.

| 순번 | 이름   | 나이 | 키(cm) | 몸무게(kg) |
|------|--------|------|--------|------------|
| 1    | 김철수 | 25   | 175    | 72         |
| 2    | 이영희 | 32   | 162    | 55         |
| 3    | 박민준 | 19   | 180    | 78         |
| 4    | 최지은 | 28   | 158    | 52         |
| 5    | 정대호 | 45   | 172    | 80         |

## Solution: Gen AI & Prompt

나이, 키, 몸무게 데이터를 입력받아서 각각의 히스토그램을 그리는 파이썬 프로그램을 작성해주세요.

* 구간 요구사항
    - 나이: 10세 단위 (0-9세, 10-19세, 20-29세, 30-39세, ...)
    - 키: 10cm 단위 (150-159cm, 160-169cm, 170-179cm, ...)
    - 몸무게: 10kg 단위 (40-49kg, 50-59kg, 60-69kg, ...)
* 기술적 요구사항
    - matplotlib 사용하여 히스토그램 생성
    - 각 히스토그램에 구간 범위를 명확히 표시
* Test Cases
    - ...

## 좋은 프롬프트 작성 방법

* Clear specification = Requirements definition
* Providing examples = Test cases
* Step-by-step explanation = Algorithm decomposition
* Context management = Task decomposition

## Prompt: Higher Level Language?

- Prompt
- Python, C/C++
- Assembly 
- Machine Code 
- ...

## Hollerith Tabulating System

:::::::::::::: {.columns}
::: {.column width="50%"}
![1890: Hollerith Tabulating System](images/hh-tabulator.jpg)
:::
::: {.column width="50%"}
- 1896\. Tabulating Machine Company
- 1911\. CTR (Computing Tabulating Recording Company)
- 1924\. IBM (International Business Machines)
:::
::::::::::::::

## Software Crisis

> The major cause of the software crisis is that the machines
> have become several orders of magnitude more powerful!
> ...
> and now we have gigantic computers, programming has
> become an equally gigantic problem.
>
> Edsger Dijkstra, The Humble Programmer. 1972

## Software Engineering

Handling complexity.

* Software Process: Analysis, design, coding, testing, maintenance
* Software Architecture: Bridge between requirements and implementation
* Agile Practices: CI/CD
* ...

## Knuth's Literate Programming

_"Programs are meant to be read by humans and only incidentally for computers to execute."_

```cweb
main() {
  @<Print a greeting@>;
}

@<Print a greeting@>=
printf("Greetings ... to\n"); /* Hello, */

@ Since we're using the |printf| routine, we had better include the standard input/output header file.

@<Include files@>=
#include <stdio.h>
```

## Requirements, Design, Test, and Tasks

* 요구 사항, 설계, 테스트를 포함한 명세서를 작성
* Implementation Specification
    - Iterate "Divide and Conquer" 
    - Plan with sub tasks

## Memory Bank

Remember where you are.

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

## AI for Software Engineering

From the Ice Age to Machine Learning, Deep Learning, and recently
Generative AI.

## Test가 마지막 보루

Spec: Assignment `var = expression`

```
x = 1;             // OK
y = 1 + "hello";   // AI can make code accept assignments we don't intend.
```

## Plain Text 

AI와 사람이 공유하기 쉬울 수록 AI와 사람의 협업이 촉진될 수 있다.

```Makefile
slides.tex: slides.md template.tex
	pandoc -t beamer ${FILTER} -V theme:Berlin \
      --template=template.tex --pdf-engine=xelatex 
      -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex
 ``` 