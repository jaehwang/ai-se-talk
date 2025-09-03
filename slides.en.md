---
title: AI-Powered Software Development
subtitle: Technology for Both Speed and Perfection
author: Kim Jaehwang
date: September 3, 2025
paginate: true
header-includes:
  - |
    ```{=revealjs}
    <style>
    .reveal {
        font-size: 28px; /* Default is usually 40px */
    }
    .reveal h1 { font-size: 2.5em; }
    .reveal h2 { font-size: 2.11em; }
    .reveal h3 { font-size: 1.55em; }
    /* TOC styles */
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
            % No background for other pages
          \fi%
        \fi%
      \fi%
    }
    \setbeamertemplate{footline}[frame number]
    ```
---

## AI-Powered Software Development

### AI v.s Human

* _"Microsoft to Lay Off About 9,000 Employees"_
   - New York Times. July 2025

* _"You're not going to lose a job – your job to an AI, but you're going to lose your job to somebody who uses AI"_
   - Jensen Huang, May 2025

### Problem: Requirements

Input age, height, and weight data and output histograms.

| No. | Name | Age | Height(cm) | Weight(kg) |
|-----|------|-----|------------|-----------|
| 1   | Kim Chulsoo | 25 | 175 | 72 |
| 2   | Lee Younghee | 32 | 162 | 55 |
| 3   | Park Minjun | 19 | 180 | 78 |
| 4   | Choi Jieun | 28 | 158 | 52 |
| 5   | Jung Daeho | 45 | 172 | 80 |

### Solution: Gen AI & Prompt

Please write a Python program that takes age, height, and weight data as input and draws histograms for each data type.

* Chart Requirements
    - Age: 10-year intervals (0-9 years, 10-19 years, 20-29 years, 30-39 years, ...)
    - Height: 10cm intervals (150-159cm, 160-169cm, 170-179cm, ...)
    - Weight: 10kg intervals (40-49kg, 50-59kg, 60-69kg, ...)
* Design
    - Use matplotlib to create histograms
    - Clearly display interval ranges on each histogram
* Test Cases
    - ...

### Good Prompt Writing Techniques

* Clear specification = Requirements definition
* Step-by-step explanation = Algorithm decomposition
* Providing examples = Test cases
* Context management = Task decomposition

### AI Colleague

:::::::::::::: {.columns}
::: {.column width="60%"}
![AI Team Mate](images/ai_mate.jpg)
:::
::: {.column width="40%"}
"Treat AI as a teammate, not as a tool."
:::
::::::::::::::

Professor Jeremy Utley, Stanford University  

* Source: YouTube [Link](https://youtu.be/rSS5yM74zeo?si=oPMib-EkOBtdxFkg)

### Prompt: Higher Level Language?

- Prompt
- Python, C/C++
- Assembly 
- Machine Code 
- ...

## Software Engineering

### Problem & Solution

Reducing population census tabulation time from 8 years (1880) to 3 years (1890)

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

## Taming AI Agents

AI coding assistants need comprehensive instruction systems to work with consistent quality and style

* Reference project: [Link](https://github.com/jaehwang/arith_lang)

### Directory Structure

```
project_root/
├── .github/
│   └── copilot-instructions.md  # GitHub Copilot
├── .clinerules/
│   └── cline-instructions.md    # Cline Instructions
├── CLAUDE.md                    # Claude Code
├── AGENTS.md                    # Main instruction
├── memory-bank/                 # Inter-session continuity
└── rules/                       # Code quality rules
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
    ## Architecture
    ...

### Memory Bank System

Documentation system to ensure inter-session continuity for AI agents:

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

* **projectbrief.md**: Basic project requirements and goals
* **productContext.md**: Project's reason for existence and user experience goals
* **activeContext.md**: Current work focus and recent changes
* **systemPatterns.md**: System architecture and technical decisions
* **techContext.md**: Technologies used and development environment setup
* **progress.md**: Current state and remaining work

### AI Agent Usage Workflow

1. **At session start**: Check Memory Bank files, check instruction files
2. **During code work**: Apply anchor comments rules
3. **During commits**: Follow commit message guidelines
4. **Inter-session continuity**: Maintain work progress and context through Memory Bank

### Benefits

* **Consistency**: Ensure same code quality across multiple AI agents
* **Continuity**: Maintain context across sessions through Memory Bank
* **Scalability**: When adding new AI tools, integration possible by just referencing AGENTS.md
* **Maintainability**: Centralized rule management for consistent updates

## AI Collaboration: Large-Scale Task Execution

Effective methods needed for breaking down large tasks into sub tasks in AI-powered development

### Intent Drift Problem

* **AI Coding Challenges:**
    - Keeping agents on track through long, complex tasks
* **Drift Example - Context Size Constraints:**
    - Initial goal: "Add new features to large-scale legacy codebase"
    - Problem: Entire codebase exceeds AI context window
    - Result: AI works with partial information and generates code inconsistent with existing architecture

### Core Principles

1. **Single source of truth (SoT)**: Specifications including requirements, design, and tests
2. **Sub task**: Break specifications into implementable work units
3. **Continuous drift detection**: Iterate implementation and testing
4. **Phase boundaries = Commit boundaries**: One commit per sub task

### Directory Structure

```
project_root/
├── .github/
│   ├── copilot-instructions.md      # GitHub Copilot
│   └── prompts/
│       └── deep-planning.prompt.md  # Deep Planning
├── specs/             # SoT: requirements, design, test specifications
├── src/               # Source code
├── tests/             # Test code
```

### Case Study (1/2): Variable System Specification

**specs/variables.md** (specification)

- Immutable-by-default, explicit mutable declaration with `mut`
- Allow shadowing, reassignment enforces type matching
- Precise diagnostic messages

### Case Study (2/2): Work Planning

1. **Using .github/prompts/deep-planning.prompt.md** in GitHub Copilot:

        /deep-planning Create an implementation plan based on 
        specs/variables.md document and save in 
        plans/mut-implementation-plan.md file.

    - → Generate `plans/mut-implementation-plan.md`

2. **Implement and verify according to the order in plans/mut-implementation-plan.md**:
    - 4-phase implementation sequence: `mut` token processing → Symbol Table extension → type checking → error messages

### Overall Workflow Summary

:::::::::::::: {.columns}
::: {.column width="33%"}
**Preparation**

- Follow project rules
- Designate SoT (specs/)
- Establish plans (plans/)
:::
::: {.column width="33%"}
**Execution Loop**

- Implement Sub Tasks
- Write and run tests
- Detect and correct drift
- Commit
:::
::: {.column width="33%"}
**Completion**

- Regression testing
- Record changes
:::
::::::::::::::

## Epilogue

### AI Collaboration: Plain Text

- The easier it is to share between AI and humans, the more AI-human collaboration can be promoted
- These slides were created by converting Markdown documents to PDF and HTML
    * See [Link](https://github.com/jaehwang/ai-se-talk)

```Makefile
slides.tex: slides.md template.tex
	pandoc -t beamer ${FILTER} -V theme:Berlin \
      --template=template.tex --pdf-engine=xelatex 
      -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex
 ```

## Q&A
