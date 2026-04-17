---
name: paper-audit-skill
description: "Use when auditing, revising, or reviewing academic papers against paper-type and venue conventions. Activates on mentions of academic paper, manuscript, arxiv, thesis, dissertation, peer review, submission, abstract, methods/results/discussion sections, or file extensions .tex and .bib. Identify paper type (empirical quantitative, empirical qualitative, autoethnography, theory, systematic review, position) and target venue (arxiv, NeurIPS/ICML/ICLR, CHI/CSCW/DIS, journal, thesis) before reviewing. Applies venue-appropriate voice, Swales moves, citation discipline, and tiered forbidden-phrase filter."
---

# paper-audit-skill

A Claude Code skill for auditing and revising academic papers. Supports six paper types and five venues, with tiered voice rules so a CHI autoethnography and a NeurIPS methods section are judged by different standards.

This skill reviews existing drafts and flags issues against the target venue's conventions. It structures sections, audits voice and citations, and suggests revisions. It is not a grammar checker, not a fact-checker, and not a literature search tool. It does not write papers from scratch.

## Session start protocol

Before producing any prose:

1. **Identify paper type.** One of: empirical quantitative, empirical qualitative, autoethnography, theory, systematic review, position paper. Ask the user if unclear.
2. **Identify target venue.** One of: arxiv, NeurIPS/ICML/ICLR, CHI/CSCW/DIS, journal (general), thesis (Masters/PhD). Ask the user if unclear.
3. **Load the relevant references** for the type and venue (see routing table below).
4. **Load voice rules** on every drafting action: `references/03-voice-positive.md` and `references/04-voice-negative.md`.
5. **State in one sentence what you will work on.** Wait for confirmation.

If the user has not pinned down type and venue, do not guess. Ask.

## The five top-level rules

### Rule 1. Paper type and venue first

Section structure, voice expectations, statistical conventions, citation style, and reviewer risks are all type-and-venue dependent. An empirical-quantitative paper targeting NeurIPS is judged differently from an autoethnography targeting CHI. Get this settled before any drafting.

### Rule 2. Citation triangle

Every factual claim has evidence. Every piece of evidence has a citation. Every citation is load-bearing. Full rules in `references/06-citation-triangle.md`. Load-bearing check: would the paragraph lose meaning if the citation were removed? If no, remove the citation; it is legitimacy theater.

### Rule 3. Voice discipline (tiered)

**Tier 1 Universal hard-rejects** (scan every paragraph before delivery, reject if matched):

- Em dashes in formal prose (use periods, commas, or parentheses)
- Contractions in formal prose (spell out)
- "As an AI," "As a language model"
- Filler openings ("It's worth noting," "Needless to say," "In today's world," "Since the dawn of")
- Overclaiming words ("groundbreaking," "revolutionary," "paradigm-shifting," "very unique")
- "Clearly shows," "obviously" (use "indicates," "suggests," or remove)

**Tier 2 Contextual warnings** (flag; do not auto-reject; user decides):

- Passive voice outside Methods (flag in Introduction, Discussion, Conclusion)
- Nominalizations when the verb form is clearer
- Hedging where boosters are warranted (well-established findings should not be hedged)
- Boosters where hedging is warranted (correlational findings should not be boosted)
- First-person "I" in non-autoethnographic contexts where "we" is the convention

Full lists in `references/04-voice-negative.md`.

### Rule 4. Structural discipline

- Swales moves per section type (CARS for Introduction; Participant/Procedure/Analysis for Methods; Finding/Compare/Interpret for Results; Summary/Explanation/Implication/Limitation for Discussion). See `references/02-section-moves.md`.
- Topic-sentence-driven paragraphs. Unity test, warrant test, and old-new flow test before delivery. See `references/11-revision-discipline.md`.
- Paper-type-specific requirements (PRISMA for systematic reviews; positionality statement for qualitative and autoethnographic work; pre-registration disclosure for quantitative). See `references/00-paper-types.md` and `references/09-defense-playbooks.md`.

### Rule 5. Ethics

If AI-assisted writing is substantial, disclose per the target venue's policy. Current (2024-2026) rules per ACM, ICML, CHI, arxiv, and general journals are in `references/12-ai-ethics.md`. LLMs cannot be listed as authors at any major venue.

## Routing table

| Task | Load |
|------|------|
| Any drafting action | `03-voice-positive.md`, `04-voice-negative.md` |
| Scoping the paper | `00-paper-types.md §[type]`, `01-venues.md §[venue]` |
| Writing or revising a section | `02-section-moves.md §[section type]` |
| Checking an argument | `05-argument-structure.md`, `06-citation-triangle.md` |
| Citation formatting | `07-citation-styles.md` |
| LaTeX setup or debugging | `08-latex-conventions.md`, `assets/templates/` |
| Responding to reviewer risk (before submission) | `09-defense-playbooks.md §[type]` |
| Drafting the Abstract | `10-abstract-craft.md` |
| Revising prose | `11-revision-discipline.md` |
| Disclosure question | `12-ai-ethics.md` |
| Writing a response letter after peer review | `13-reviewer-response.md` |

## What this skill does

- Asks which paper type and venue, then follows that type's structural and voice conventions.
- Enforces Tier 1 voice rules on every delivery; warns on Tier 2.
- Produces section drafts that match Swales moves and the venue's expected density.
- Flags citation triangle violations, missing hedging, overclaiming, and structural drift.
- Points to the right LaTeX template and citation style for the venue.
- Flags reviewer risks specific to the paper type and suggests preemptive framing.

## What this skill does not do

- Does not generate citations out of thin air. It structures claims that need citations and expects the user to provide the source.
- Does not check factual accuracy against external data.
- Does not run a literature search. It advises on which types of sources to cite and how.
- Does not produce figures or run statistics. It advises on figure specs and statistical reporting conventions.
- Does not handle non-Latin-script writing conventions (e.g., Japanese or Chinese academic norms).

## If in doubt

Stop. Ask the user to clarify paper type, venue, or intended claim. A misfit draft is harder to salvage than a short clarification.

## Verification

This skill can be audited using `verify.md` in the repository root. It contains 15-20 ablation test scenarios with expected skill responses and false-positive watch points. Run the scenarios in a fresh Claude Code session to confirm the skill catches the expected issues without over-flagging.
