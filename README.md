```
                      _                _                                 
    __ _  ___ __ _  __| | ___ _ __ ___ (_) ___  _ __   __ _ _ __   ___ _ __
   / _` |/ __/ _` |/ _` |/ _ \ '_ ` _ \| |/ __|| '_ \ / _` | '_ \ / _ \ '__|
  | (_| | (_| (_| | (_| |  __/ | | | | | | (__ | |_) | (_| | |_) |  __/ |
   \__,_|\___\__,_|\__,_|\___|_| |_| |_|_|\___|| .__/ \__,_| .__/ \___|_|
                                                |_|         |_|
```

**Draft papers like a journal editor reviews them.**

# paper-audit-skill

**A Claude Code skill for writing academic papers. Six paper types. Five venues. Tiered voice rules.**

Paper-type-aware, venue-aware drafting and revision. The skill asks which paper type you are writing and where you are submitting, then applies the conventions a journal or conference reviewer would expect.

## Why This Exists

Generic writing tools produce generic prose. Academic papers are judged by different standards per field and venue: a CHI autoethnography and a NeurIPS methods section have almost nothing in common in voice, structure, or reviewer risk.

This skill encodes those differences. It:

- Identifies the paper type (empirical quantitative, empirical qualitative, autoethnography, theory, systematic review, position).
- Identifies the venue (arxiv, NeurIPS/ICML/ICLR, CHI/CSCW/DIS, journal, thesis).
- Loads the references that apply.
- Applies tiered voice rules (universal hard-rejects and contextual warnings).
- Flags reviewer risks specific to the paper type.
- Points at the right LaTeX template and citation style.

## What It Does

```
You: "I'm writing an empirical HCI paper for CHI. Help me draft the introduction."
  |
  +-- Skill asks clarifying questions if type/venue aren't clear
  +-- Loads references/00-paper-types.md §empirical-qualitative
  +-- Loads references/01-venues.md §CHI
  +-- Loads references/02-section-moves.md §Introduction (CARS model)
  +-- Loads voice rules (03-voice-positive, 04-voice-negative)
  |
  +-- Drafts with:
        - Authorial "we"
        - CARS Introduction (territory → niche → occupy)
        - Four contribution bullets at the end
        - No em dashes, no "In today's world," no "groundbreaking"
        - Hedging where appropriate
```

The skill does not:

- Generate citations from nothing. You still provide sources.
- Check factual accuracy. The skill structures claims that need citations.
- Run literature searches. It advises on what types of sources to cite.
- Produce figures or run statistics. It advises on specs and reporting.

## Installation

One command:

```bash
curl -fsSL https://raw.githubusercontent.com/Hiro-Inagawa/paper-audit-skill/main/install.sh | bash
```

Works on macOS and Linux. On Windows, run in Git Bash or WSL.

### Alternative: Manual install

```bash
git clone https://github.com/Hiro-Inagawa/paper-audit-skill.git /tmp/paper-audit-skill
cp -r /tmp/paper-audit-skill/skills/paper-audit-skill ~/.claude/skills/
rm -rf /tmp/paper-audit-skill
```

No dependencies to install. The skill is pure markdown; it does not require Node, Playwright, or any other runtime.

## Usage

### In Claude Code

The skill auto-activates when you mention an academic paper, manuscript, arxiv, thesis, or related terms. It also activates on `.tex` and `.bib` file extensions.

First interaction: the skill asks for paper type and venue. Answer honestly; different combinations load different rules.

### Example prompts

```
"Help me write the introduction to my NeurIPS paper on attention mechanisms."
"Review my Related Work section for a CHI submission."
"I'm writing a systematic review. What sections do I need?"
"My reviewer said n=1 isn't generalizable. How do I respond?"
"Draft the abstract for my arxiv preprint."
```

### Explicit invocation

If the skill does not auto-activate when you want it, reference it directly:

```
"Using the paper-audit-skill skill, review this paragraph."
```

## Supported Paper Types

| Type | Best for | Structure |
|------|----------|-----------|
| Empirical quantitative | Stats, hypothesis testing | IMRaD |
| Empirical qualitative | Interviews, observation | Methods + Findings + Discussion |
| Autoethnography | Single-subject, lived experience | Flexible; narrative + reflexivity |
| Theory | Frameworks, formal proofs | Problem + Thesis + Argument + Consequences |
| Systematic review | Evidence synthesis | PRISMA 2020 |
| Position paper | Argument without new data | Scope + Thesis + Argument + Counterargument |

## Supported Venues

| Venue | Length | Voice | Citation style |
|-------|--------|-------|----------------|
| arxiv preprint | 8-15 pages | Technical, authorial "we" | natbib (author-year) typical |
| NeurIPS, ICML, ICLR | 8 pages main | Dense, formal | natbib |
| CHI, CSCW, DIS | 10-14 pages | Narrative OK; reflexive | ACM numeric |
| Journal (general) | 6,000-10,000 words | Formal, venue-specific | APA, Chicago, Vancouver, etc. |
| Thesis (Masters, PhD) | 10K-100K words | Formal; full literature chapter | University-specific |

## Tiered Voice Rules

The skill enforces two tiers of voice rules so it does not over-enforce across disciplines.

**Tier 1 (universal hard-rejects)** scanned on every paragraph:

- Em dashes in formal prose
- Contractions in formal prose
- "As an AI," "As a language model"
- Filler openings ("It's worth noting," "In today's world," "Since the dawn of")
- Overclaiming ("groundbreaking," "revolutionary," "very unique")
- "Clearly shows," "obviously" (without hedge)

**Tier 2 (contextual warnings)** flagged for human review:

- Passive voice outside Methods
- Nominalizations where verb form is clearer
- Hedging where boosters are warranted (and vice versa)
- First-person "I" in a "we" venue

The user can override any Tier 2 flag based on disciplinary convention.

## Verification

This skill is auditable. See `verify.md` in the repository root for 20 ablation test scenarios.

Each test provides a deliberately flawed input and lists the issues the skill should catch, plus false-positive watch items the skill should NOT flag. Run the tests in a fresh Claude Code session to confirm the skill works as documented.

### Quick audit

```bash
cat verify.md
```

Read through the tests. Pick three or four. Try them in a fresh Claude Code session. If the skill catches the expected issues and does not over-flag, it passes.

## Reference Files

The skill body is in `skills/paper-audit-skill/`. It contains:

```
SKILL.md                           # Top-level rules and routing
references/
  00-paper-types.md                # Six types, structure per type
  01-venues.md                     # Five venues, conventions per venue
  02-section-moves.md              # Swales moves per section
  03-voice-positive.md             # What to do: character-subject, old-new, hedging
  04-voice-negative.md             # What to avoid: tiered forbidden phrases
  05-argument-structure.md         # Booth: claim, reason, evidence, warrant, acknowledgment
  06-citation-triangle.md          # Every claim has evidence, evidence has citation
  07-citation-styles.md            # APA, Chicago, IEEE, ACM, Vancouver, natbib, biblatex
  08-latex-conventions.md          # Multi-venue LaTeX, .bbl gotcha
  09-defense-playbooks.md          # Reviewer risks per paper type, preemption
  10-abstract-craft.md             # 150-250 word formula, four moves
  11-revision-discipline.md        # Williams Style six-pass revision
  12-ai-ethics.md                  # Disclosure rules per venue (2024-2026)
assets/
  templates/
    arxiv-generic.tex              # Open-license arxiv scaffold
    journal-generic.tex            # Generic journal scaffold
    POINTERS.md                    # Where to get venue-specific templates
  bibliography-templates.bib       # BibTeX entry templates per source type
```

## Requirements

- Claude Code installed.
- No additional runtime dependencies.
- Target: academic writing in English, Latin-script. Non-Latin-script conventions are out of scope for v1.

## Philosophy

Academic writing is a craft. The skill does not replace the writer; it enforces the conventions the writer needs to respect to be taken seriously. Every rule in the skill is derived from:

- Swales & Feak, *Academic Writing for Graduate Students*.
- Booth, Colomb, & Williams, *The Craft of Research*.
- Williams & Bizup, *Style: Lessons in Clarity and Grace*.
- PRISMA 2020 reporting standards.
- Ellis, Adams, & Bochner, autoethnography tradition.
- Yin, *Case Study Research*.
- APA, Chicago, IEEE, ACM, Vancouver citation standards.
- Current (2024-2026) AI-assisted writing disclosure policies at ACM, ICML, CHI, and major journals.

## License

MIT. See [LICENSE](LICENSE).

## Contributing

Issues and pull requests welcome. Particularly: domain-specific additions (e.g., biomedical reporting standards beyond Vancouver, humanities conventions beyond Chicago), venue-specific templates, and translations of the voice rules for non-English academic contexts.

## Related

- [web-reader](https://github.com/Hiro-Inagawa/web-reader) — Read any URL from Claude Code. Same repo pattern; reads websites instead of writing papers.
