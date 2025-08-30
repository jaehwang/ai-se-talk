---
title: AI and Software Engineering
subtitle: Higher Level Language, Prompt
author: Jaehwang Kim
date: September 3, 2025
header-includes:
  - |
    \usebackgroundtemplate{%
      \ifnum\thepage=1%
        \includegraphics[width=\paperwidth,height=\paperheight]{images/cover.jpg}%
      \else%
        % 다른 페이지는 기본 배경
      \fi
    }
---

## Problem: 요구 사항

나이, 키, 몸무게 데이터를 입력으로받아서 히스토그램을 출력한다.

| 순번 | 이름   | 나이 | 키(cm) | 몸무게(kg) |
|------|--------|------|--------|------------|
| 1    | 김철수 | 25   | 175    | 72         |
| 2    | 이영희 | 32   | 162    | 55         |
| 3    | 박민준 | 19   | 180    | 78         |
| 4    | 최지은 | 28   | 158    | 52         |
| 5    | 정대호 | 45   | 172    | 80         |

## Solution: Hollerith Tabulating System

![Hollerith Tabulating System](images/hh-tabulator.jpg)

## Solution: Prompt

    나이, 키, 몸무게 데이터를 입력받아서 
    각각의 히스토그램을 그리는 파이썬 프로그램을 작성해주세요.

    ## 구간 요구사항:

    - 나이: 10세 단위 (0-9세, 10-19세, 20-29세, 30-39세, ...)
    - 키: 10cm 단위 (150-159cm, 160-169cm, 170-179cm, ...)
    - 몸무게: 10kg 단위 (40-49kg, 50-59kg, 60-69kg, ...)

    ## 기술적 요구사항:

    - matplotlib 사용하여 히스토그램 생성
    - 3개의 서브플롯으로 각 변수 표시
    - 각 히스토그램에 구간 범위를 명확히 표시

## Prompt: Higher Level Language

Prompt > C/C++ > Assembly > Machine Code > ...

## Higher Level Language

Natural language rather than programming language

* Clear specification = Requirements definition
* Providing examples = Test cases
* Step-by-step explanation = Algorithm decomposition
* Context management = Task decomposition

## Software Crisis

> The major cause of the software crisis is that the machines
> have become several orders of magnitude more powerful!
> To put it quite bluntly: as long as there were no machines,
> programming was no problem at all; when we had a few
> weak computers, programming became a mild problem,
> and now we have gigantic computers, programming has
> become an equally gigantic problem.
>
> Edsger Dijkstra. The Humble Programmer. 1972

## Software Engineering

Complexity.

* Software Process: Analysis, design, coding, testing, maintenance
* Software Architecture: Bridge between requirements and implementation
* Agile Practices: CI/CD
* ...

## AI for Software Engineering

From the Ice Age to Machine Learning, Deep Learning, and recently
Generative AI.

## Bi Centennial Man

## Knuth's Literate Programming

"Programs are meant to be read by humans and only incidentally for computers to execute."

```cweb
main()
{
  @<Print a greeting@>;
}

@<Print a greeting@>=
printf("Greetings ... to\n"); /* Hello, */

@ Since we're using the |printf| routine, we had better include the standard input/output header file.

@<Include files@>=
#include <stdio.h>
```

## Test가 마지막 보루

Spec: Assignment `var = expression`

```
x = 1;             // OK
y = 1 + "hello";   // AI can make code accept assignments we don't intend.
```

##  Requirements, Design, and Test

## Iterate "Divide and Conquer

* Implementation Specification
* Plan with sub tasks

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

## How to Master AI Coding

Effective prompting strategies for better code generation

## 1. Be Specific and Clear

**Bad**: "Make a function"

**Good**: "Create a Python function that validates email addresses using regex and returns True/False"

* Specify language, framework, and libraries
* Define input/output types clearly
* Mention error handling requirements

## 2. Provide Context and Examples

```python
# Instead of just asking for a sorting function
# Provide context:
"""
I need a function to sort a list of user objects by their
registration date (datetime field). Handle None values
by putting them at the end.

Example input: [User(name="Alice", reg_date=datetime(2023,1,1)), 
                User(name="Bob", reg_date=None)]
"""
```

## 3. Break Down Complex Tasks

Don't ask for an entire application at once

1. **Start small**: Individual functions or classes
2. **Build incrementally**: Add features step by step
3. **Test frequently**: Validate each component
4. **Refactor**: Improve code quality iteratively

## 4. Leverage AI for Different Phases

### Requirements Analysis
* "Analyze this user story and suggest edge cases"
* "What are potential security concerns for this feature?"

### Design
* "Suggest a class diagram for this problem"
* "What design patterns would fit this scenario?"

### Implementation
* "Implement this algorithm with error handling"
* "Convert this pseudocode to Python"

### Testing
* "Generate unit tests for this function"
* "Create test data for edge cases"

### Debugging
* "Explain why this code throws an error"
* "Suggest optimizations for this slow function"

## 5. Iterative Refinement

