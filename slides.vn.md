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

## Phát triển phần mềm hỗ trợ bởi AI

### AI so với Con người

* _"Microsoft to Lay Off About 9,000 Employees"_
   - New York Times. July 2025

* _"You're not going to lose a job – your job to an AI, but you're going to lose your job to somebody who uses AI"_
   - Jensen Huang, May 2025

### Vấn đề: Yêu cầu

Nhập dữ liệu tuổi, chiều cao và cân nặng và xuất ra biểu đồ histogram.

| Số. | Tên | Tuổi | Chiều cao(cm) | Cân nặng(kg) |
|-----|------|-----|------------|-----------|
| 1   | Kim Chulsoo | 25 | 175 | 72 |
| 2   | Lee Younghee | 32 | 162 | 55 |
| 3   | Park Minjun | 19 | 180 | 78 |
| 4   | Choi Jieun | 28 | 158 | 52 |
| 5   | Jung Daeho | 45 | 172 | 80 |

### Giải pháp: Gen AI & Prompt

Hãy viết một chương trình Python nhận dữ liệu tuổi, chiều cao và cân nặng làm đầu vào và vẽ biểu đồ histogram cho từng loại dữ liệu.

* Yêu cầu biểu đồ
    - Tuổi: khoảng cách 10 tuổi (0-9 tuổi, 10-19 tuổi, 20-29 tuổi, 30-39 tuổi, ...)
    - Chiều cao: khoảng cách 10cm (150-159cm, 160-169cm, 170-179cm, ...)
    - Cân nặng: khoảng cách 10kg (40-49kg, 50-59kg, 60-69kg, ...)
* Thiết kế
    - Sử dụng matplotlib để tạo biểu đồ histogram
    - Hiển thị rõ ràng các khoảng giá trị trên từng biểu đồ histogram
* Trường hợp kiểm thử
    - ...

### Kỹ thuật viết Prompt tốt

* Đặc tả rõ ràng = Định nghĩa yêu cầu
* Giải thích từng bước = Phân tách thuật toán
* Cung cấp ví dụ = Trường hợp kiểm thử
* Quản lý ngữ cảnh = Phân tách nhiệm vụ

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

### Prompt: Ngôn ngữ bậc cao hơn?

- Prompt
- Python, C/C++
- Assembly 
- Machine Code 
- ...

## Kỹ thuật Phần mềm

### Vấn đề & Giải pháp

Giảm thời gian lập bảng thống kê dân số từ 8 năm (1880) xuống còn 3 năm (1890)

:::::::::::::: {.columns}
::: {.column width="40%"}
![1890: Hệ thống lập bảng Hollerith](images/hh-tabulator.jpg)
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
* Thực hành Agile: Đánh giá mã, kiểm thử đơn vị, CI/CD, ...
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

Trợ lý lập trình AI cần hệ thống hướng dẫn toàn diện để có thể làm việc với chất lượng và phong cách nhất quán

* Dự án tham khảo: [Link](https://github.com/jaehwang/arith_lang)

### Cấu trúc Thư mục

```
project_root/
├── .github/
│   └── copilot-instructions.md  # GitHub Copilot
├── .clinerules/
│   └── cline-instructions.md    # Hướng dẫn Cline
├── CLAUDE.md                    # Claude Code
├── AGENTS.md                    # Hướng dẫn chính
├── memory-bank/                 # Tính liên tục giữa các phiên
└── rules/                       # Quy tắc chất lượng mã
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

Hệ thống tài liệu để đảm bảo tính liên tục giữa các phiên làm việc của AI agent:

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

### Quy trình sử dụng AI Agent

1. **Khi bắt đầu phiên làm việc**: Kiểm tra tệp Memory Bank, kiểm tra tệp hướng dẫn
2. **Trong quá trình làm việc với mã**: Áp dụng quy tắc anchor comments
3. **Khi commit**: Tuân thủ hướng dẫn commit message
4. **Tính liên tục giữa các phiên**: Duy trì tiến độ công việc và ngữ cảnh thông qua Memory Bank

### Lợi ích

* **Tính nhất quán**: Đảm bảo chất lượng mã giống nhau giữa nhiều AI agent
* **Tính liên tục**: Duy trì ngữ cảnh giữa các phiên thông qua Memory Bank
* **Khả năng mở rộng**: Khi thêm công cụ AI mới, có thể tích hợp chỉ bằng cách tham khảo AGENTS.md
* **Khả năng bảo trì**: Quản lý quy tắc tập trung để cập nhật nhất quán

## Hợp tác AI: Thực hiện nhiệm vụ quy mô lớn

Cần có phương pháp hiệu quả để chia nhỏ các nhiệm vụ lớn thành các nhiệm vụ con trong quá trình phát triển hỗ trợ bởi AI

### Vấn đề Lệch ý định

* **Thách thức trong AI Coding:**
    - Giữ cho các agent đi đúng hướng qua các nhiệm vụ dài và phức tạp
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
        tài liệu specs/variables.md.

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
