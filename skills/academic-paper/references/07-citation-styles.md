# 07. Citation styles

Seven major styles. Each is used in specific fields and venues. Pick the one required by the target venue; do not mix.

---

## Quick selector

| Venue or field | Style |
|----------------|-------|
| NeurIPS, ICML, ICLR | natbib (author-year) |
| arxiv cs.AI, cs.HC | natbib (author-year) typical |
| CHI, CSCW, DIS (ACM venues) | ACM numeric or ACM author-year |
| IEEE venues | IEEE numeric |
| Nature, Science (general science) | Nature style (numeric superscript) |
| Psychology, education, social science | APA 7 (author-year) |
| Humanities, history | Chicago (author-date or notes-bibliography) |
| Biomedical, medical | Vancouver (numeric) |

Always check the venue's author guidelines; house styles shift.

---

## 1. APA 7 (author-year)

Standard in psychology, education, social sciences. Reference list alphabetized by author surname.

### In-text

- Parenthetical: `(Smith, 2020)`
- Narrative: `Smith (2020) found…`
- Multiple authors: up to 20 listed; 21+ use ellipsis. In-text, 3+ authors use "et al."
  - Two authors in text: `(Smith & Jones, 2020)` (parenthetical) or `Smith and Jones (2020)` (narrative)
  - Three or more: `(Smith et al., 2020)`
- Page numbers for direct quotes: `(Smith, 2020, p. 42)` or `(Smith, 2020, pp. 42-43)`

### Reference list examples

Journal article:
> Smith, J. A. (2020). Title of article in sentence case. *Journal Name*, *15*(3), 101-120. https://doi.org/10.xxxx/yyyy

Book:
> Smith, J. A. (2020). *Book title in italics*. Publisher.

Book chapter:
> Smith, J. A. (2020). Chapter title. In A. Editor (Ed.), *Book title* (pp. 25-47). Publisher.

Conference paper:
> Smith, J. A. (2020). Paper title. In *Proceedings of the Conference Name* (pp. 101-110). Publisher.

Web source:
> Smith, J. A. (2020, March 15). Page title. Site Name. https://url

---

## 2. Chicago author-date

Humanities, some social sciences. Similar to APA but with minor formatting differences.

### In-text

- Parenthetical: `(Smith 2020)` (no comma between name and year)
- With page: `(Smith 2020, 42)`
- Multiple authors: "et al." for 4+

### Reference list examples

Journal article:
> Smith, John A. 2020. "Article Title in Quotation Marks." *Journal Name* 15, no. 3: 101-120.

Book:
> Smith, John A. 2020. *Book Title in Italics*. Publisher.

Conference paper:
> Smith, John A. 2020. "Paper Title." In *Proceedings of Conference Name*, edited by Jane Editor, 101-110. Publisher.

Web source:
> Smith, John A. 2020. "Page Title." Site Name. Accessed March 15, 2020. https://url.

---

## 3. Chicago notes-bibliography

Humanities, history, some literary studies. Uses numbered footnotes, not parenthetical citations. Full bibliography at end.

### In-text

Superscript footnote number: `The central thesis is supported by extensive documentation.¹`

### Footnote format

First citation (full):
> ¹ John A. Smith, *Book Title* (City: Publisher, 2020), 42.

Subsequent citations (short):
> ² Smith, *Book Title*, 55.

Or:
> ² Smith, 55.

### Bibliography format

Same as Chicago author-date but without the year immediately after author.

---

## 4. IEEE (numeric)

Engineering, computer science, IEEE-affiliated venues. Numbered in citation order.

### In-text

Bracketed number: `Prior work [1] showed that…`
Multiple: `[1], [2], [3]` or `[1-3]`

### Reference list examples

Journal article:
> [1] J. A. Smith, "Article title," *Abbreviated Journal Name*, vol. 15, no. 3, pp. 101-120, Mar. 2020, doi: 10.xxxx/yyyy.

Conference paper:
> [2] J. A. Smith, "Paper title," in *Proc. Conf. Name*, City, State, Year, pp. 101-110.

Book:
> [3] J. A. Smith, *Book Title*. Publisher, 2020.

Web source:
> [4] J. A. Smith, "Page title," Site Name, Mar. 15, 2020. [Online]. Available: https://url

Key: reference list ordered by citation order, not alphabetically.

---

## 5. Vancouver (numeric)

Biomedical, medical. Similar to IEEE but with specific biomedical conventions (ICMJE standards).

### In-text

Superscript or bracketed: `The treatment was effective.¹` or `[1]`

### Reference list

> 1. Smith JA, Jones BC, Patel DE, et al. Article title. Abbreviated Journal Name. 2020 Mar;15(3):101-20.

Author names: Last First initial, no periods, comma-separated. "et al." after 6 authors.

Journal abbreviations: use Index Medicus abbreviations.

---

## 6. ACM (numeric, newer author-year option)

ACM venues (CHI, CSCW, DIS, SIGGRAPH, etc.). Historically numeric; newer ACM style allows author-year.

### ACM numeric

In-text: `[1]` or `[1, 2, 3]`

Reference list:
> [1] John A. Smith, Jane B. Doe, and Alice C. Editor. 2020. Paper title. In *Proceedings of the 2020 CHI Conference on Human Factors in Computing Systems* (CHI '20). ACM, New York, NY, USA, 101-110. https://doi.org/10.xxxx/yyyy

### ACM author-year

Check venue guidelines; newer option increasing adoption.

### LaTeX

`acmart.cls` includes both styles. Set with document class option.

---

## 7. natbib (LaTeX)

Not a citation style per se, but a LaTeX package that implements author-year formatting. Used across cs.AI, physics, math, and many other fields.

### Commands

| Command | Output | When to use |
|---------|--------|-------------|
| `\citet{key}` | Author (Year) | Narrative, subject or object |
| `\citep{key}` | (Author, Year) | Parenthetical |
| `\citet[pre][post]{key}` | pre Author (Year, post) | With prefix or page |
| `\citep[see][p. 42]{key}` | (see Author, Year, p. 42) | With prefix and page |
| `\citeauthor{key}` | Author | Name only |
| `\citeyear{key}` | Year | Year only |
| `\citealt{key}` | Author Year | No comma |
| `\citealp{key}` | Author, Year | No parens |

### Bibliography style

Standard choices:
- `plainnat.bst` — author-year, sorted alphabetically
- `abbrvnat.bst` — same, abbreviated first names
- `unsrtnat.bst` — unsorted, citation order

### Setup

```latex
\usepackage{natbib}
\bibliographystyle{plainnat}
\bibliography{references}
```

### Examples in prose

```latex
\citet{packer2023memgpt} pioneered an OS-inspired approach.
% → Packer et al. (2023) pioneered an OS-inspired approach.

Sycophancy is well documented \citep{sharma2024, shapira2026}.
% → Sycophancy is well documented (Sharma et al., 2024; Shapira et al., 2026).

Yin \citep[p. 42]{yin2017} defines revelatory cases as...
% → Yin (Yin, 2017, p. 42) defines revelatory cases as...
```

---

## biblatex (LaTeX, modern alternative)

Modern, actively developed alternative to natbib. More flexible, supports independent control of in-text and bibliography styles.

### Setup

```latex
\usepackage[style=authoryear, backend=biber]{biblatex}
\addbibresource{references.bib}
```

### Commands

| Command | Output | Equivalent in natbib |
|---------|--------|----------------------|
| `\textcite{key}` | Author (Year) | `\citet{key}` |
| `\parencite{key}` | (Author, Year) | `\citep{key}` |
| `\cite{key}` | Varies by style | Varies |

### Style options

- `authoryear` — APA-like
- `numeric` — IEEE-like
- `alphabetic` — Smith2020 keys
- `verbose` — Chicago notes-bibliography

### natbib vs biblatex

| Aspect | natbib | biblatex |
|--------|--------|----------|
| Age | Older | Modern (2006+) |
| Backend | BibTeX | biber (or BibTeX) |
| Support | Works everywhere | Works where biber is available |
| Flexibility | Limited | High (dual styles, custom fields) |
| Journal templates | Most support | Some support |

**Choice rule:** Use natbib if the journal template specifies it or you are targeting conservative venues. Use biblatex for new documents when control over style separation matters.

---

## Consistency rules

Pick one style and apply it uniformly:

1. In-text format (parenthetical vs narrative) consistent within a sentence.
2. Full author lists or "et al." consistent per style rules (APA: 3+ = et al. in text; Vancouver: 7+ = et al. in list).
3. Italics: journal names, book titles. Not article titles (APA, Chicago) or paper titles (IEEE).
4. Quotation marks: article titles (Chicago N-B); not in APA or IEEE.
5. DOIs: include when available; format per style.
6. Publisher locations: required in Chicago N-B; usually optional elsewhere.

---

## Arxiv preprints

Different styles handle arxiv preprints differently.

### APA 7

> Smith, J. A. (2020). Title of paper. *arXiv*. https://doi.org/10.48550/arXiv.XXXX.XXXXX

(Note: treated like an unpublished work with identifier.)

### natbib / biblatex (BibTeX entry type)

```bibtex
@article{smith2020arxiv,
  author        = {Smith, John A.},
  title         = {Title of paper},
  year          = {2020},
  eprint        = {2003.12345},
  archivePrefix = {arXiv},
  primaryClass  = {cs.AI},
  url           = {https://arxiv.org/abs/2003.12345}
}
```

### IEEE

> [1] J. A. Smith, "Title of paper," arXiv, 2020. [Online]. Available: https://arxiv.org/abs/2003.12345

### Rule

If a venue version exists, cite the venue version; drop the preprint reference.

---

## Citation style checklist

Before submission:

1. Which style does the venue require?
2. Are all in-text citations in the correct format?
3. Is the bibliography style consistent?
4. Are author lists complete per style rules?
5. Are journal abbreviations correct (if required)?
6. Are venue versions cited where they exist, not just arxiv preprints?
7. Are DOIs included where available?
8. Are there duplicate entries with different keys?

Fix before submission. Formatting errors are the most common reason for rejection at the copyediting stage.
