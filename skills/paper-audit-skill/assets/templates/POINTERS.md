# Template pointers

Many academic venues have official LaTeX templates with specific license terms that prevent redistribution. This file points to the official sources.

Always download the current template from the venue's site; templates update yearly.

---

## NeurIPS / ICML / ICLR

### NeurIPS

- Site: `neurips.cc`
- Template: Download from the Call for Papers page for the specific year.
- Overleaf: `overleaf.com/latex/templates/neurips-2024/` (update year as needed)
- Preprint option: `\usepackage[preprint]{neurips_2024}` for arxiv use before submission.

### ICML

- Site: `icml.cc`
- Template: Download from the year's Call for Papers.
- Overleaf: search "ICML [year]" for the current template.

### ICLR

- Site: `iclr.cc`
- Template: Download from the year's Call for Papers.
- Overleaf: search "ICLR [year]" for the current template.

### Usage

- Follow the template exactly. Do not modify margins, fonts, or spacing.
- Submissions are double-blind; remove author information before submission.
- For preprint posting: use the preprint option (NeurIPS) or wait until after submission.

---

## CHI / CSCW / DIS / other ACM venues

### ACM Master Template (acmart)

- Site: `acm.org/publications/proceedings-template`
- Direct Overleaf link: `overleaf.com/latex/templates/acm-conference-proceedings-master-template/`

### Usage

- Use `\documentclass[sigconf]{acmart}` for CHI, CSCW, DIS main tracks.
- Use `\documentclass[sigchi]{acmart}` for older SIGCHI venues if required.
- Use `\documentclass[acmsmall]{acmart}` for journal-style ACM venues (TOCHI, TiiS).
- Submissions for CHI main track are double-blind; anonymize with `\documentclass[sigconf,anonymous]{acmart}`.
- ACM prefers the CCS concepts classification; include via `\ccsdesc`.

---

## IEEE venues

### IEEE Conference and Journal Templates

- Site: `ieee.org/conferences/publishing/templates.html`
- Direct: `template-selector.ieee.org` (wizard selects by venue)

### Usage

- Download from the specific conference or journal page.
- Most IEEE venues use `IEEEtran` class.
- Numeric citations with `\bibliographystyle{IEEEtran}`.

---

## Journal templates

Many journals have specific templates. Some use open-format submissions (any LaTeX; typeset by publisher).

### Elsevier

- Site: `elsevier.com/researcher/author/policies-and-guidelines/latex-instructions`
- Class: `elsarticle`

### Springer

- Site: `springer.com/gp/authors-editors/journal-author/journal-author-helpdesk/preparation/1268`
- Class: `sn-jnl.cls` or journal-specific.

### Wiley

- Check journal's author guide.
- Often uses `WileyNJD-v2.cls` or similar.

### Nature, Science

- Nature: `nature.com/nature-portfolio/for-authors/preparing-your-submission`
- Science: `science.org/content/page/instructions-preparing-initial-manuscript`
- These journals typically request Word submission; LaTeX accepted but not required.

---

## Thesis templates

### University-specific

Check your graduate school's handbook or website. Most universities provide an approved LaTeX template.

### General thesis templates

- `MastersDoctoralThesis` on Overleaf (popular open template).
- `thesis-gwu`, `ucla-thesis`, and other university-named templates exist.

### Usage

- Follow your university's approved template.
- Do not use a template from another university; formatting requirements differ.

---

## arxiv scaffolds

- `assets/templates/arxiv-generic.tex` in this skill (bundled).
- George Kour's `arxiv.sty`: `github.com/kourgeorge/arxiv-style`
- NeurIPS preprint option: `\usepackage[preprint]{neurips_20XX}`

For arxiv submission mechanics (`.bbl` gotcha, submission process), see `references/08-latex-conventions.md`.

---

## When the template is wrong

Sometimes official templates have bugs or outdated settings. If you find one:

1. Report to the venue's organizer mailing list.
2. Do not fix the template yourself (risks rejection).
3. Use the template as-is unless it fails to compile.

---

## License notes

- NeurIPS templates: typically permissive; check the template's LICENSE file.
- ACM templates: permissive; acmart.cls is LPPL-licensed.
- IEEE templates: permissive for use in IEEE submissions.
- Journal templates: typically permissive for use with that journal.

This skill does not redistribute official templates because license terms can change and often restrict derivative works.
