---
title: Phát triển phần mềm thông qua hợp tác AI AI-Powered Software Development 
subtitle: Công nghệ để đạt được cả tốc độ và hoàn hảo Technology for Both Speed and Perfection 
author: Jaehwang Kim
date: 8 tháng 9 năm 2025
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
    % Vietnamese font support
    \setmainfont{DejaVu Serif}
    \setsansfont{DejaVu Sans}
    \setmonofont{DejaVu Sans Mono}
    ```
---

## Phát triển phần mềm hỗ trợ bởi AI AI-Powered Software Development 

### AI v.s Human

* _"Microsoft to Lay Off About 9,000 Employees"_
   - New York Times. July 2025

* _"You're not going to lose a job – your job to an AI, but you're going to lose your job to somebody who uses AI"_
   - Jensen Huang, May 2025

### Problem: Requirements

Nhập dữ liệu tuổi, chiều cao và cân nặng và xuất ra biểu đồ histogram.

| Số. | Tên | Tuổi | Chiều cao(cm) | Cân nặng(kg) |
|-----|------|-----|------------|-----------|
| 1   | Kim Chulsoo | 25 | 175 | 72 |
| 2   | Lee Younghee | 32 | 162 | 55 |
| 3   | Park Minjun | 19 | 180 | 78 |
| 4   | Choi Jieun | 28 | 158 | 52 |
| 5   | Jung Daeho | 45 | 172 | 80 |

### Solution: Gen AI & Prompt

Hãy viết một chương trình Python nhận dữ liệu tuổi, chiều cao và cân nặng làm đầu vào và vẽ biểu đồ histogram cho từng loại dữ liệu.

* Yêu cầu biểu đồ Chart Requirements
    - Tuổi: khoảng cách 10 tuổi (0-9 tuổi, 10-19 tuổi, 20-29 tuổi, 30-39 tuổi, ...)
    - Chiều cao: khoảng cách 10cm (150-159cm, 160-169cm, 170-179cm, ...)
    - Cân nặng: khoảng cách 10kg (40-49kg, 50-59kg, 60-69kg, ...)
* Thiết kế Design
    - Sử dụng matplotlib để tạo biểu đồ histogram
    - Hiển thị rõ ràng các khoảng giá trị trên từng biểu đồ histogram
* Trường hợp kiểm thử Test Cases
    - ...

### Kỹ thuật viết Prompt tốt Good Prompt Writing Techniques

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
"Hãy đối xử với AI như đồng đội, không phải như công cụ. Treat AI as a teammate, not as a tool."
:::
::::::::::::::

Giáo sư Jeremy Utley, Đại học Stanford  

* Nguồn: YouTube [Link](https://youtu.be/rSS5yM74zeo?si=oPMib-EkOBtdxFkg)

### Prompt: Higher Level Language?

- Prompt
- Python, C/C++
- Assembly 
- Machine Code 
- ...

## Software Engineering

### Problem & Solution

Giảm thời gian lập bảng thống kê dân số từ 8 năm (1880) xuống còn 3 năm (1890)

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
@ header file.
@ we had better include the standard input/output 
@<Include files@>=
#include <stdio.h>
```

## Thuần hóa AI Agent Taming AI Agents

Trợ lý lập trình AI cần hệ thống hướng dẫn toàn diện để có thể làm việc với chất lượng và phong cách nhất quán

AI coding assistants need comprehensive instruction systems to work with consistent quality and style

* Dự án tham khảo: [Link](https://github.com/jaehwang/arith_lang)

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
    ## ARchitecture
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

* **projectbrief.md**: Yêu cầu cơ bản và mục tiêu của dự án
* **productContext.md**: Lý do tồn tại của dự án và mục tiêu trải nghiệm người dùng
* **activeContext.md**: Trọng tâm công việc hiện tại và thay đổi gần đây
* **systemPatterns.md**: Kiến trúc hệ thống và quyết định kỹ thuật
* **techContext.md**: Công nghệ sử dụng và thiết lập môi trường phát triển
* **progress.md**: Trạng thái hiện tại và công việc còn lại

### AI Agent Usage Workflow

1. **At session start**: Check Memory Bank files, check instruction files
2. **During code work**: Apply anchor comments rules
3. **During commits**: Follow commit message guidelines
4. **Inter-session continuity**: Maintain work progress and context through Memory Bank

### Benefits

* **Tính nhất quán Consistency**: Đảm bảo chất lượng mã giống nhau giữa nhiều AI agent
* **Tính liên tục Continuity**: Duy trì ngữ cảnh giữa các phiên thông qua Memory Bank
* **Khả năng mở rộng Adaptation**: Khi thêm công cụ AI mới, có thể tích hợp chỉ bằng cách tham khảo AGENTS.md
* **Khả năng bảo trì Maintainability**: Quản lý quy tắc tập trung để cập nhật nhất quán

## Hợp tác AI: Thực hiện nhiệm vụ quy mô lớn AI Collaboration: Large-Scale Task Execution

Cần có phương pháp hiệu quả để chia nhỏ các nhiệm vụ lớn thành các nhiệm vụ con trong quá trình phát triển hỗ trợ bởi AI

Effective methods needed for breaking down large tasks into sub tasks in AI-powered development

### Vấn đề Lệch ý định Intent Drift Problem

* **Thách thức trong AI Coding:**
    - Giữ cho các agent đi đúng hướng qua các nhiệm vụ dài và phức tạp Keeping agents on track through long, complex tasks
* **Ví dụ về Lệch ý định - Hạn chế kích thước ngữ cảnh:**
    - Mục tiêu ban đầu: "Thêm tính năng mới vào codebase legacy quy mô lớn"
    - Vấn đề: Toàn bộ codebase vượt quá cửa sổ ngữ cảnh của AI
    - Kết quả: AI làm việc với thông tin không đầy đủ và tạo ra mã không nhất quán với kiến trúc hiện có

### Nguyên tắc cốt lõi

1. **Nguồn thông tin duy nhất (SoT)**: Đặc tả bao gồm yêu cầu, thiết kế và kiểm thử
2. **Nhiệm vụ con**: Chia nhỏ đặc tả thành các đơn vị công việc có thể triển khai
3. **Phát hiện lệch ý định liên tục**: Lặp lại việc triển khai và kiểm thử
4. **Ranh giới giai đoạn = Ranh giới commit**: Một commit cho mỗi nhiệm vụ con

### Cấu trúc Thư mục

```
project_root/
├── .github/
│   ├── copilot-instructions.md      # GitHub Copilot
│   └── prompts/
│       └── deep-planning.prompt.md  # Lập kế hoạch sâu
├── specs/             # SoT: yêu cầu, thiết kế, đặc tả kiểm thử
├── src/               # Mã nguồn
├── tests/             # Mã kiểm thử
```

### Tổng quan quy trình

:::::::::::::: {.columns}
::: {.column width="33%"}
**Chuẩn bị**

- Tuân thủ quy tắc dự án
- Chỉ định SoT (specs/)
- Thiết lập kế hoạch (plans/)
:::
::: {.column width="33%"}
**Vòng lặp thực thi**

- Triển khai nhiệm vụ con
- Viết và chạy kiểm thử
- Phát hiện và khắc phục lệch ý định
- Commit
:::
::: {.column width="33%"}
**Hoàn thành**

- Kiểm thử hồi quy
- Ghi lại các thay đổi
:::
::::::::::::::

### Nghiên cứu tình huống (1/2): Đặc tả hệ thống biến

**specs/variables.md** (đặc tả)

- Bất biến theo mặc định, khai báo có thể thay đổi rõ ràng với `mut`
- Cho phép shadowing, tái gán thực thi khớp kiểu
- Thông báo chẩn đoán chính xác

### Nghiên cứu tình huống (2/2): Lập kế hoạch công việc

1. **Sử dụng .github/prompts/deep-planning.prompt.md** trong GitHub Copilot:

        /deep-planning Tạo kế hoạch triển khai dựa trên 
        tài liệu specs/variables.md và lưu vào 
        tệp plans/mut-implementation-plan.md.

    - → Tạo `plans/mut-implementation-plan.md`

2. **Triển khai và xác minh theo thứ tự trong plans/mut-implementation-plan.md**:
    - Chuỗi triển khai 4 giai đoạn: xử lý token `mut` → mở rộng Bảng ký hiệu → kiểm tra kiểu → thông báo lỗi

## Kết luận
### Hợp tác AI: Plain Text


- Càng dễ chia sẻ giữa AI và con người, càng có thể thúc đẩy hợp tác AI-con người
- Các slide này được tạo bằng cách chuyển đổi tài liệu Markdown thành PDF và HTML
    * Xem [Link](https://github.com/jaehwang/ai-se-talk)

```Makefile
slides.tex: slides.md template.tex
	pandoc -t beamer ${FILTER} -V theme:Berlin \
      --template=template.tex --pdf-engine=xelatex 
      -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex
 ```

## Q&A
