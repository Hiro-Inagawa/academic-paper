# 01. Venues

Five venue families. Each has its own length expectations, formatting requirements, voice conventions, reviewer culture, and citation style. Pin down the venue before drafting.

---

## 1. arxiv preprint

Not peer-reviewed. Rapid publication. Used across cs, physics, math, biology (bioRxiv), and increasingly other fields.

### Conventions

| Aspect | Value |
|--------|-------|
| Typical length | 8-15 pages + references + unlimited appendix |
| Format | LaTeX source strongly preferred; PDF accepted |
| Columns | Single column (two acceptable) |
| Font size | 10-12 pt |
| Section structure | IMRaD or flexible (author's choice) |
| Voice | Authorial "we"; technical and dense |
| Citation style | Depends on target field: natbib author-year (cs.AI, most cs); numeric (ACM-affiliated) |
| Review | None; community feedback only |

### Requirements

- `.bbl` file must accompany `.tex` source (arxiv does not run BibTeX). Same base name as main `.tex`.
- US Letter paper. Minimum 1-inch margins.
- No line numbers. No watermarks. No embedded JavaScript.
- Endorsement required for first-time submitters. See `08-latex-conventions.md` for mechanics.

### Template

NeurIPS preprint template (with `[preprint]` option) is a widely accepted default for cs.AI/cs.HC. George Kour's `arxiv.sty` is an alternative. See `assets/templates/arxiv-generic.tex` for a starter scaffold.

---

## 2. NeurIPS / ICML / ICLR

Top-tier machine learning venues. Highly selective. Specific templates required.

### Conventions

| Aspect | Value |
|--------|-------|
| Typical length | 8 pages main + unlimited references + unlimited appendix |
| Format | Conference-specific LaTeX template (NeurIPS, ICML, ICLR each have their own) |
| Columns | Single column |
| Font size | 10 pt |
| Section structure | IMRaD (Introduction, Related Work, Method, Experiments, Discussion, Conclusion) |
| Voice | Authorial "we"; very dense; technical |
| Citation style | natbib author-year (standard in template) |
| Review | Double-blind; 3+ reviewers; rigorous |

### Requirements

- Use the official conference template exactly. Do not override margins, font, or spacing.
- Anonymous submission: no author names, no self-citation giveaways, no identifying acknowledgments.
- Reproducibility expected: code release, hyperparameters, dataset details.
- Claims must be empirically backed or formally proven.

### Reviewer culture

- High bar on novelty.
- Reviewers test every claim against the experiments.
- Ablations expected; single-dataset results suspect.
- Deep theoretical or mathematical rigor.

### Template

Download official from `neurips.cc`, `icml.cc`, or `iclr.cc`. See `assets/templates/POINTERS.md`.

---

## 3. CHI / CSCW / DIS

ACM Human-Computer Interaction venues. Mixed methods welcome. Reflexivity valued.

### Conventions

| Aspect | Value |
|--------|-------|
| Typical length | 10-14 pages + references (CHI main track); shorter for alt.CHI, workshops |
| Format | ACM Master template (sigconf for CHI; different for CSCW) |
| Columns | Single or double column (venue-specific) |
| Font size | 10 pt |
| Section structure | Introduction → Related Work → Study Design / Methods → Findings → Discussion → Implications → Limitations → Conclusion |
| Voice | Authorial "we"; narrative acceptable; first-person "I" OK in autoethnography |
| Citation style | ACM numeric (most common) or author-year (some venues allow) |
| Review | Double-blind (CHI); single-blind (some CSCW tracks); 4+ reviewers |

### Requirements

- Positionality statement for qualitative and autoethnographic work.
- Implications for Design section often expected.
- Thick description for qualitative findings.
- Anonymous submission for main tracks.

### Reviewer culture

- Methodological pluralism: quantitative, qualitative, and autoethnographic all welcome.
- Reflexivity valued; researcher's role acknowledged rather than hidden.
- Narrative and storytelling acceptable alongside rigor.
- Implications for Design is a common deliverable; pure theory papers less welcome.

### Template

`acmart.cls` with the appropriate style option (`sigconf`, `sigchi`, `acmsmall`). Download from `acm.org/publications/proceedings-template` or Overleaf. See `assets/templates/POINTERS.md`.

---

## 4. Journal (general)

Peer-reviewed journals across all fields. Longer than conference papers. House-style requirements vary significantly by journal.

### Conventions

| Aspect | Value |
|--------|-------|
| Typical length | 6,000-10,000 words (20-30 pages with figures) |
| Format | Word or LaTeX; check author guidelines |
| Columns | Usually double-column in print; manuscript submitted single-column |
| Font size | 12 pt, double-spaced (manuscript); journal typesets final |
| Section structure | IMRaD; structured abstract common (Background, Methods, Results, Discussion as abstract headings) |
| Voice | Formal; journal-specific (Nature: dense + authoritative; PLOS: accessible; qualitative journals: narrative OK) |
| Citation style | Journal-specific: APA, Chicago, Vancouver, Harvard, Nature style |
| Review | Single- or double-blind; 2-4 reviewers; revisions typically requested |

### Requirements

- Follow the journal's submission guidelines exactly (title page format, ethics declarations, funding disclosures, CRediT author contributions).
- Cover letter often required (brief; states the paper's main contribution and why it fits the journal).
- Graphical abstract for some journals (separate figure summarizing the paper).

### Reviewer culture

- More exposition expected than in conference papers.
- Revisions routine (most accepted papers go through at least one round).
- Specific journal has a specific reviewer pool; matches to scope matter.

### Template

Journal-specific. `assets/templates/journal-generic.tex` provides a 12-pt double-spaced manuscript scaffold adaptable to most journals.

---

## 5. Thesis (Masters / PhD)

Long-form academic work for degree completion. University-specific formatting.

### Conventions

| Aspect | Value |
|--------|-------|
| Typical length | Masters: 10,000-15,000 words (40-60 pages). PhD: 70,000-100,000 words (200-300 pages) |
| Format | University-specific; check graduate school handbook |
| Columns | Single |
| Font size | 12 pt, double-spaced or 1.5-spaced |
| Section structure | Chapter 1 Introduction, Chapter 2 Literature Review, Chapter 3 Methodology, Chapter 4+ Findings, Chapter N Discussion and Conclusion, Appendices |
| Voice | Formal; first-person "I" or "the researcher"; passive voice common in methodology |
| Citation style | University- or discipline-specific |
| Review | Committee (3-5 members); high bar on literature depth and methodological rigor |

### Requirements

- Full literature review chapter (not a section).
- Full methodology chapter (extensive detail; replicability is a goal).
- Abstract (often 300-500 words, longer than a paper abstract).
- Acknowledgments, dedications, and other front matter as required by university.
- Appendices can be extensive (raw data, instruments, IRB documents).

### Reviewer culture

- Committee members read exhaustively.
- Defense is oral; expect scrutiny of methodology choices.
- Revisions common before final submission.

### Template

University-specific. Ask the graduate school for the approved LaTeX or Word template.

---

## What each venue does NOT accept

A venue can reject a paper on fit grounds regardless of quality. Know what each venue refuses before drafting.

### arxiv

- No real restrictions on content; accepts nearly everything in scope for its categories.
- Rejects submissions that are: not machine-readable, include watermarks, or use prohibited categories without endorsement.

### NeurIPS, ICML, ICLR

Will reject on fit:
- Pure autoethnography (no empirical data) — wrong methodology for ML venue.
- Pure position papers without empirical or formal results.
- Qualitative-only user studies — they prefer quantitative evaluation.
- Theory papers without applications or experiments.
- Papers that do not fit the ML topic scope.

Prefer: empirical results with ablations, reproducibility artifacts, quantitative evaluation against baselines, formal proofs paired with empirical validation.

### CHI, CSCW, DIS

Will reject on fit:
- Pure mathematical proofs without user-relevance framing.
- Hard-core ML algorithm papers without human-centered framing.
- Theory papers that do not connect to design, practice, or human experience.
- Papers that frame autoethnography or qualitative findings as generalizable (CHI accepts them as situated, not universal).

Prefer: user studies (quantitative or qualitative), design research, autoethnography with reflexivity, systems with user evaluation, theory grounded in human practice.

### Journal (general)

Will reject on fit:
- Work that does not match the journal's stated scope.
- Preliminary results (journals prefer complete studies).
- Papers shorter than the journal's minimum (usually 6,000 words).
- Conference-style brevity (journal papers have more exposition).

Varies by journal. Always check scope and aims.

### Thesis

No content restrictions beyond university guidelines. But:
- Must meet department's methodological standards.
- Must include full literature review chapter.
- Must demonstrate research contribution at the degree level (Masters: competence; PhD: original contribution).
- Committee may reject on scope (too narrow or too broad).

---

## Venue decision table

| Primary fit | Best venue | Avoid |
|-------------|-----------|-------|
| Novel cs/ML algorithm + empirical results | NeurIPS/ICML/ICLR (selective) or arxiv (preprint) | Journal (slow for fast-moving field) |
| User study with design implications | CHI/CSCW (longer, narrative OK) | NeurIPS (user studies less prioritized) |
| Single-subject cultural insight | Autoethnography venues (DIS, alt.CHI) or qualitative journal | NeurIPS (won't fit), general journal (needs generalizability frame) |
| Theoretical framework, no data | Philosophy journal, theoretical cs venue, or arxiv | Empirical conference (rejected) |
| Comprehensive evidence synthesis | Systematic review journal (25+ studies) | Single paper venue |
| Stance without full evidence | Position/vision paper at a workshop or opinion venue | Main conference track (loses to empirical) |
| Final degree work | Thesis (university venue) | Conference (too compressed) |

---

## Practical checklist before starting

1. Which venue is the target? (If unsure, pick one. Cross-venue submission is harder than writing for one.)
2. Download the official template from the venue's site. Do not modify margins, spacing, or fonts.
3. Confirm citation style from the venue's author guidelines.
4. Check the deadline and the submission window (some venues have rolling, others have fixed cycles).
5. If anonymous submission: strip self-citations that would identify you.
6. If co-authoring: confirm author order and contributions early (use CRediT if possible).
