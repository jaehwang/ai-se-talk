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

## Bi Centennial Man

## Hollerith Sorter


## High Level Language

C/C++ rather than assembly language

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

## Higher Level Language

Natural language rather than programming language

* Clear specification = Requirements definition
* Providing examples = Test cases
* Step-by-step explanation = Algorithm decomposition
* Context management = Task decomposition

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

