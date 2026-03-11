# LaTeX Homework Template

A minimalistic, modular LaTeX class and style collection designed for university homework. 

The core idea of this project is to keep your document preamble completely uncluttered. Instead of copying and pasting fifty lines of `\usepackage` statements into every new assignment, this template separates concerns into modular toolkits. Simply load the packages you need for the specific assignment and start writing.

## Repository Structure

* **`myhw.cls`**: The core document class (built on standard `article`). It sets up the page geometry and structure.
* **`mymath.sty`**: The mathematics toolkit. Loads math related packages and defines custom commands.
* **`mycs.sty`**:The computer science toolkit. Loads computer science related packages.
* **`mytikz.sty`**: The graphics toolkit. Pre-loads `tikz`, `pgfplots`, `graphicx`, and essential layout packages like `float` and `caption`.
* **`template.tex`**: A blank boilerplate file to quickly spin up a new assignment.

## Installation

To make these files globally available to all your LaTeX projects without cluttering your working directories, drop them into your local `texmf` tree. 

Based on macOS/Linux, place the files here:
```bash
~/Library/texmf/tex/latex/local/latex-homework-template/
```

*Note: Depending on your TeX distribution, you may need to run `texhash` in your terminal to update the file database.*

## Usage

Create a new `.tex` file and use `myhw` as your document class. You can then selectively pull in the style packages you need for that specific assignment. See `template.tex` for how to properly load these styles.