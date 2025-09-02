---
title: Phát triển phần mềm thông qua hợp tác AI
subtitle: Công nghệ để đạt được cả tốc độ và hoàn hảo
author: Kim Jaehwang
date: 3 tháng 9 năm 2025
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
    \usepackage[utf8]{inputenc}
    \usepackage[T5]{fontenc}
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

## Giới thiệu bản thân

### Tạo ra phần mềm chất lượng cao với chi phí thấp

:::::::::::::: {.columns}
::: {.column width="70%"}
* 2020: Phát triển Engineering System tại VS Company
* 2018: Nhà nghiên cứu
* 2015: Chương trình Kiến trúc sư phần mềm toàn công ty
* 2012: Môi trường hợp tác phần mềm toàn công ty
    - Collaboration Center: Collab, xLM, Harmony, Mod, ...
* 2006: Gia nhập CTO với kinh nghiệm
:::
::: {.column width="30%"}
![Atlassian Summit 2012](images/atlas_lg.jpg)
:::
::::::::::::::

## Phát triển phần mềm sử dụng AI

### AI so với Con người

* _"Microsoft sa thải khoảng 9.000 nhân viên"_
   - New York Times. Tháng 7 năm 2025

* _"Bạn sẽ không mất việc vì AI, nhưng bạn sẽ mất việc vào tay người biết sử dụng AI"_
   - Jensen Huang, Tháng 5 năm 2025

### Vấn đề: Yêu cầu

Nhận dữ liệu tuổi, chiều cao, cân nặng làm đầu vào và xuất ra biểu đồ histogram.

| STT | Tên      | Tuổi | Chiều cao(cm) | Cân nặng(kg) |
|-----|----------|------|---------------|--------------|
| 1   | Kim Chulsoo | 25   | 175           | 72           |
| 2   | Lee Younghee | 32   | 162           | 55           |
| 3   | Park Minjun | 19   | 180           | 78           |
| 4   | Choi Jieun | 28   | 158           | 52           |
| 5   | Jung Daeho | 45   | 172           | 80           |

### Giải pháp: Gen AI & Prompt

Hãy viết một chương trình Python nhận dữ liệu tuổi, chiều cao, cân nặng và vẽ histogram cho từng loại dữ liệu.

* Yêu cầu về khoảng
    - Tuổi: theo đơn vị 10 tuổi (0-9 tuổi, 10-19 tuổi, 20-29 tuổi, 30-39 tuổi, ...)
    - Chiều cao: theo đơn vị 10cm (150-159cm, 160-169cm, 170-179cm, ...)
    - Cân nặng: theo đơn vị 10kg (40-49kg, 50-59kg, 60-69kg, ...)
* Yêu cầu kỹ thuật
    - Sử dụng matplotlib để tạo histogram
    - Hiển thị rõ ràng phạm vi khoảng trên mỗi histogram
* Test Cases
    - ...

### Cách viết prompt tốt

* Clear specification = Requirements definition
* Step-by-step explanation = Algorithm decomposition
* Providing examples = Test cases
* Context management = Task decomposition

### Đồng nghiệp AI

:::::::::::::: {.columns}
::: {.column width="60%"}
![AI Team Mate](images/ai_mate.jpg)
:::
::: {.column width="40%"}
"Hãy đối xử với AI như đồng đội, không phải như công cụ."
:::
::::::::::::::

Giáo sư Jeremy Utley, Đại học Stanford  

* Nguồn: YouTube [Link](https://youtu.be/rSS5yM74zeo?si=oPMib-EkOBtdxFkg)

### Prompt: Ngôn ngữ cấp cao hơn?

- Prompt
- Python, C/C++
- Assembly 
- Machine Code 
- ...

## Kỹ thuật Phần mềm

### Vấn đề & Giải pháp

Rút ngắn thời gian thống kê dân số từ 8 năm (1880) xuống 3 năm (1890)

:::::::::::::: {.columns}
::: {.column width="40%"}
![1890: Hệ thống Bảng tính Hollerith](images/hh-tabulator.jpg)
:::
::: {.column width="60%"}
- 1896\. Tabulating Machine Company
- 1911\. CTR (Computing Tabulating Recording Company)
- 1924\. IBM (International Business Machines)
:::
::::::::::::::

### Khủng hoảng Phần mềm

> The major cause of the software crisis is that the machines
> have become several orders of magnitude more powerful!
> ...
> and now we have gigantic computers, programming has
> become an equally gigantic problem.
>
> - Edsger Dijkstra, The Humble Programmer. 1972

### Kỹ thuật Phần mềm

Xử lý độ phức tạp.

* Quy trình Phần mềm: Phân tích, thiết kế, lập trình, kiểm thử, bảo trì
* Kiến trúc Phần mềm: Cầu nối giữa yêu cầu và triển khai
* Thực hành Agile: Code review, unit test, CI/CD, ...
* ...

### Lập trình Văn xuôi của Knuth

_"Chương trình được viết để con người đọc và chỉ tình cờ để máy tính thực thi."_

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

## Thuần hóa AI Agent

Cung cấp hệ thống hướng dẫn toàn diện để các AI coding assistant khác nhau có thể làm việc với chất lượng và phong cách nhất quán

* Dự án tham khảo: [Link](https://github.com/jaehwang/arith_lang)

### Cấu trúc Thư mục

```
project_root/
├── .github/
│   └── copilot-instructions.md      # GitHub Copilot
├── .clinerules/
│   └── cline-instructions.md        # Hướng dẫn Cline
├── CLAUDE.md                        # Claude Code
├── AGENTS.md                        # Hướng dẫn chính
├── memory-bank/                     # Tính liên tục giữa các phiên
└── rules/                           # Quy tắc chất lượng code
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

### Hệ thống Memory Bank

Hệ thống tài liệu để đảm bảo tính liên tục giữa các phiên của AI agent:

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

### Quy trình làm việc với AI Agent

1. **Khi bắt đầu phiên**: Kiểm tra tệp Memory Bank, kiểm tra tệp hướng dẫn
2. **Khi làm việc với code**: Áp dụng quy tắc anchor comments
3. **Khi commit**: Tuân thủ hướng dẫn commit message
4. **Tính liên tục giữa các phiên**: Duy trì tiến độ và ngữ cảnh thông qua Memory Bank

### Lợi ích

* **Tính nhất quán**: Đảm bảo chất lượng code giống nhau giữa nhiều AI agent
* **Tính liên tục**: Duy trì ngữ cảnh giữa các phiên thông qua Memory Bank
* **Khả năng mở rộng**: Khi thêm công cụ AI mới, chỉ cần tham khảo AGENTS.md để tích hợp
* **Khả năng bảo trì**: Quản lý quy tắc tập trung để cập nhật nhất quán

## Hợp tác công cụ AI: Thực hiện công việc quy mô lớn

Phương pháp hiệu quả để chia Task lớn thành Sub Task trong phát triển sử dụng AI

### Vấn đề Lệch ý định (Drift)

* **Thách thức của AI Coding:**
    - Giữ agents đúng hướng trong các nhiệm vụ dài và phức tạp
* **Ví dụ về Drift - Giới hạn kích thước Context:**
    - Mục tiêu ban đầu: "Thêm tính năng mới vào codebase legacy quy mô lớn"
    - Vấn đề: Toàn bộ codebase vượt quá context window của AI
    - Kết quả: AI làm việc với thông tin từng phần và tạo ra code không nhất quán với kiến trúc hiện tại

### Nguyên tắc Cốt lõi

1. **Nguồn Sự thật Duy nhất (SoT)**: Yêu cầu, thiết kế, kiểm thử bao gồm trong đặc tả
2. **Sub Task**: Phân chia đặc tả thành các đơn vị công việc có thể triển khai
3. **Phát hiện drift liên tục**: Lặp lại việc triển khai và kiểm thử
4. **Ranh giới giai đoạn = Ranh giới commit**: Mỗi sub task một commit

### Cấu trúc Thư mục

```
project_root/
├── .github/
│   ├── copilot-instructions.md      # GitHub Copilot
│   └── prompts/
│       └── deep-planning.prompt.md  # Deep Planning
├── specs/             # SoT: yêu cầu, thiết kế, đặc tả test
├── src/               # Source code
├── tests/             # Test code
```

### Tổng quan Quy trình Tổng thể

:::::::::::::: {.columns}
::: {.column width="33%"}
**Chuẩn bị**

- Tuân thủ quy tắc dự án
- Chỉ định SoT (specs/)
- Lập kế hoạch (plans/)
:::
::: {.column width="33%"}
**Vòng lặp Thực thi**

- Triển khai Sub Task
- Viết và chạy test
- Phát hiện và sửa drift
- Commit
:::
::: {.column width="33%"}
**Kết thúc**

- Regression test
- Ghi chép thay đổi
:::
::::::::::::::

### Ví dụ Thực tế: Đặc tả Hệ thống Biến

**specs/variables.md** (đặc tả)

- Bất biến (immutable-by-default), khai báo biến đổi rõ ràng với `mut`
- Cho phép shadowing, tái gán ép buộc kiểu phù hợp
- Thông báo chẩn đoán chính xác

### Ví dụ Thực tế: Kế hoạch Công việc

1. **Sử dụng .github/prompts/deep-planning.prompt.md** trong GitHub Copilot:

        /deep-planning specs/functions.md 문서를 바탕으로 
        구현 계획을 만들어 줘.

    - → Tạo `plans/function-implementation-plan.md`

2. **Triển khai và xác minh theo thứ tự trong plans/mut-implementation-plan.md**:
    - 5 giai đoạn triển khai: mut flag → Symbol struct → kiểm tra kiểu → thông báo lỗi

## Epilogue

### Hợp tác với AI: Plain Text

- Càng dễ chia sẻ giữa AI và con người thì càng thúc đẩy sự hợp tác giữa AI và con người
- Slide này được tạo bằng cách chuyển đổi tài liệu Markdown thành PDF, HTML
    * Tham khảo [Link](https://github.com/jaehwang/ai-se-talk)

```Makefile
slides.tex: slides.md template.tex
	pandoc -t beamer ${FILTER} -V theme:Berlin \
      --template=template.tex --pdf-engine=xelatex 
      -o $@ slides.md

slides.pdf: slides.tex
	xelatex slides.tex
 ```

## Q&A
