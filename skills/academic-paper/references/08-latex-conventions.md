# 08. LaTeX conventions

LaTeX is the de facto standard for academic papers in cs.AI, math, physics, and many other fields. Conference templates are LaTeX-only. Journals accept LaTeX or Word.

This file covers multi-venue LaTeX setup, common failures, and the specific gotchas that cause submission rejection.

---

## Template selection by venue

| Venue | Template | Class / Style |
|-------|----------|---------------|
| NeurIPS | Official `neurips_20XX.sty` from neurips.cc | `\usepackage{neurips_2024}` |
| ICML | Official `icml20XX.sty` from icml.cc | `\usepackage{icml2024}` |
| ICLR | Official `iclr20XX.sty` from iclr.cc | `\usepackage{iclr2024}` |
| arxiv | NeurIPS preprint option or George Kour's `arxiv.sty` | `\usepackage[preprint]{neurips_2024}` or `\usepackage{arxiv}` |
| CHI, CSCW, DIS | ACM Master | `\documentclass[sigconf]{acmart}` |
| Journal (general) | Journal-specific or generic | See journal's author guidelines |
| Thesis | University-specific | See graduate school handbook |

**Rule:** Download the official template from the venue's site. Do not modify margins, font, spacing, or column layout. Reviewers reject papers that visibly deviate.

See `assets/templates/POINTERS.md` for download links. `assets/templates/arxiv-generic.tex` and `assets/templates/journal-generic.tex` are open-license scaffolds.

---

## Required packages (typical)

```latex
\usepackage[utf8]{inputenc}     % UTF-8 source
\usepackage[T1]{fontenc}        % Proper font encoding
\usepackage{natbib}             % Author-year citations (or biblatex)
\usepackage{graphicx}           % Figures
\usepackage{booktabs}           % Professional tables
\usepackage{hyperref}           % Clickable links
\usepackage{amsmath}            % Equations
\usepackage{xcolor}             % Colors
\usepackage{enumitem}           % List customization
```

### Venue-specific requirements

- NeurIPS: `\usepackage{neurips_2024}` replaces several of these defaults.
- ACM acmart: Pre-loads natbib, graphicx, hyperref. Do not re-include.
- Some journals require `\usepackage{lineno}` with `\linenumbers` for review. Remove before final submission.

---

## The `.bbl` naming gotcha

**arxiv does not run BibTeX.** You must upload the compiled `.bbl` file.

- The `.bbl` must have the same base name as the main `.tex` file.
- If main file is `paper.tex`, bibliography must be `paper.bbl`.
- Compile locally (or on Overleaf) before downloading the submission package.

**This is the single most common arxiv submission failure.**

Confirmation steps before arxiv upload:
1. Compile locally: `pdflatex paper.tex`, then `bibtex paper`, then `pdflatex paper.tex` twice.
2. Verify `paper.bbl` exists in the directory.
3. Include `paper.bbl` in the upload package alongside `paper.tex`.

For biblatex users: the equivalent file may be named differently depending on the backend (biber produces `.bbl` with a different format). Follow arxiv's help page for biblatex submissions.

---

## Format requirements (common to most venues)

- 10-12 pt type (venue-specific)
- Margin: venue-specified (often 1 inch)
- US Letter paper
- Embedded fonts (most TeX distributions do this automatically)
- No line numbers (`\usepackage{lineno}` removed for final submission)
- No watermarks
- Machine-readable PDF (not a scan)
- No embedded JavaScript
- Complete, named authorship

---

## Title and author block

### Generic

```latex
\title{Your Paper Title: Subtitle}

\author{%
  First A. Author\thanks{Footnote if needed.} \\
  Institution \\
  City, Country \\
  \texttt{email@example.com} \\
  \and
  Second B. Author \\
  Institution \\
  \texttt{email@example.com}
}
\maketitle
```

### Anonymous submission (NeurIPS, CHI double-blind)

Remove author names and affiliations. Replace with `Anonymous` or leave blank. Also:

- Remove identifying acknowledgments.
- Self-citations in third person ("Prior work (Author, 2024)" not "our earlier paper").
- Remove or anonymize grant numbers that identify the group.

---

## Section commands

```latex
\section{Introduction}
\subsection{Related Work}
\subsubsection{Commercial Memory}
\paragraph{Strengths.} Text follows inline.
```

Use at most three heading levels in the main body. `\paragraph{}` is a fourth level used sparingly.

---

## Figures

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{figures/diagram.pdf}
  \caption{Caption text. Should stand alone with the figure.}
  \label{fig:diagram}
\end{figure}
```

### Rules

- Prefer vector formats (PDF, SVG). Raster (PNG, JPG) only for photographs.
- Caption below figure in most styles (above for tables in some).
- Label scheme: `fig:short-descriptor`.
- Reference in text: `Figure~\ref{fig:diagram}`.

### Positioning

Use `[htbp]` placement: here, top, bottom, page. Let LaTeX decide. Forcing `[h!]` or `[!h]` usually causes worse results.

### Captions

Captions should stand alone. A reader scanning the paper should grasp the figure's takeaway from the caption without reading body text.

---

## Tables

```latex
\begin{table}[htbp]
  \centering
  \begin{tabular}{lrr}
    \toprule
    Metric & Phase 1 & Phase 5 \\
    \midrule
    Filler ratio  & 0.81 & 0.00 \\
    We/our ratio  & 0.02 & 0.22 \\
    Check-ins     & 18   & 4    \\
    \bottomrule
  \end{tabular}
  \caption{Selected metrics across phases.}
  \label{tab:phase-metrics}
\end{table}
```

### Rules

- Use `booktabs` rules (`\toprule`, `\midrule`, `\bottomrule`). Never `\hline`.
- Right-align numerical columns (`r` in `\begin{tabular}`).
- Left-align text columns (`l`).
- Keep tables compact; long tables move to appendix.

---

## Equations

```latex
\begin{equation}
  f(x) = \sum_{i=1}^{n} x_i \cdot w_i
  \label{eq:weighted-sum}
\end{equation}
```

Reference: `Equation~\ref{eq:weighted-sum}`.

For inline: `$f(x) = \sum x_i w_i$`.

Multi-line: `align` environment.

Do not introduce notation you will use once. Either define clearly and reuse, or drop.

---

## Footnotes

Some venues discourage. NeurIPS accepts. ACM accepts. Journals vary.

```latex
Main text\footnote{Footnote content here.}
```

### When useful

- Long URLs.
- Clarifications that would clutter the body.
- Attribution of specific contributions.

### When to avoid

- Substantive content (belongs in body).
- Heavy citation (use main references).
- Rhetorical asides (cut).

---

## Cross-references

```latex
\label{sec:methods}
\label{fig:architecture}
\label{tab:results}
\label{eq:definition}

% Reference
Section~\ref{sec:methods}
Figure~\ref{fig:architecture}
Table~\ref{tab:results}
Equation~\ref{eq:definition}
```

Use a tilde (`~`) to prevent line breaks between "Section" and the number.

---

## Common submission failures

From arxiv, NeurIPS, and CHI rejection data:

1. Line numbers left in (remove `\usepackage{lineno}` and `\linenumbers`).
2. Bibliography missing (run BibTeX locally; upload `.bbl`).
3. Margins modified (do not override template).
4. Wrong column count (NeurIPS is single; CHI sigconf is single; IEEE is double).
5. Watermarks embedded (check PDF settings).
6. Non-machine-readable PDF (compile from source; do not scan).
7. Embedded JavaScript (from interactive PDF tools; use standard pdflatex).
8. Anonymous submission with author names visible (check title page, acknowledgments, self-citations, metadata).
9. Page count exceeded (trim content or move to appendix).
10. Figures at insufficient resolution (use vector or 300 DPI raster).

---

## Reference implementations

- `assets/templates/arxiv-generic.tex` — Open-license arxiv scaffold.
- `assets/templates/journal-generic.tex` — Generic journal-style scaffold.
- `assets/templates/POINTERS.md` — Where to download NeurIPS, ACM, IEEE, and journal-specific templates.
- `assets/bibliography-templates.bib` — Bibliography entry templates by source type.

---

## LaTeX checklist before submission

1. Document compiles without errors or warnings (address all warnings).
2. All cross-references resolve (no "??" in output).
3. All citations resolve (no "(?,?)" or missing references).
4. Bibliography is complete; no duplicate entries.
5. `.bbl` file present and correctly named (for arxiv).
6. Line numbers removed.
7. Watermarks removed.
8. Anonymous if venue requires.
9. Page count within limit.
10. Template unmodified.
11. All figures render correctly.
12. PDF is searchable and machine-readable.
