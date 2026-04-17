# 00. Paper types

Six paper types. Each has its own structure, voice, statistical and methodological requirements, and reviewer risks. Pin down the type before drafting.

If unsure which type fits: look at what the paper actually contributes. Empirical papers report new data. Theory papers argue from existing knowledge. Reviews synthesize existing literature. Positions argue for a stance. Autoethnography uses the author's lived experience as data.

---

## 1. Empirical quantitative

Empirical with numerical data, statistical analysis, and hypothesis-testing logic. Common in cs.AI, psychology, biomedical sciences.

### Structure (IMRaD)

Introduction → Methods → Results → Discussion. Strict ordering. Sometimes Introduction is split into Background and Research Questions.

### Voice

Formal. Authorial "we" in Introduction and Discussion. Passive voice acceptable in Methods. Present tense for established facts, past tense for what was done.

### Requirements

- Explicit hypothesis, pre-stated (not post-hoc).
- Effect sizes (Cohen's d, η², r) mandatory alongside p-values.
- 95% confidence intervals in square brackets.
- Precise p-values ("p = .03" not "p < .05").
- Multiple-comparison correction if more than one test (Bonferroni, FDR).
- Pre-registration (OSF, AsPredicted) increasingly expected; state if exploratory.

### Reviewer risks

- Underpowered (small n, no power analysis reported)
- p-hacking indicators (many tests, few reported significant)
- Missing effect sizes
- HARKing (hypothesis formulated after results)
- Confounds unaddressed

### Preemption

- Report power analysis.
- Report all conditions, even null results.
- Separate confirmatory from exploratory analyses.
- Preregister and reference the registration.

---

## 2. Empirical qualitative

Empirical using interviews, observation, or document analysis. Data is textual. Common in HCI, sociology, education.

### Structure

Introduction → Related Work → Methods → Findings → Discussion. Less rigid than IMRaD. "Findings" not "Results" (signals qualitative).

### Voice

First-person plural ("we") standard. Positionality acknowledged explicitly. Thick description expected. Direct quotes from participants, clearly attributed.

### Requirements

- Sample size justified by saturation, not power (typical: 9-17 interviews, 4-8 focus groups).
- Saturation criterion stated ("no new themes across three consecutive interviews").
- Thick description: context, behaviors, direct quotes grounding themes.
- Positionality statement (1-2 paragraphs on researcher stance and potential bias).
- Coding rationale explained (inductive, deductive, or mixed).

### Reviewer risks

- Saturation undefended
- Thin quotes (not enough direct evidence)
- Coding unclear (how themes were derived)
- Positionality boilerplate (generic, not specific)
- Themes not traceable to data

### Preemption

- State saturation criterion explicitly and the count at which it was reached.
- Pull three or four exemplar quotes per theme.
- Describe the coding process (initial, axial, selective; or whatever framework applies).
- Make positionality specific to this study (what biases could have affected this data).

---

## 3. Autoethnography

Single-subject, first-person. The author's lived experience is the data. Common in HCI (DIS, alt.CHI), education, organizational studies.

### Structure

Flexible. Often a narrative arc with reflexive commentary. Literature woven in thematically. May use evocative scenes, dialogue, internal monologue.

### Voice

First-person singular ("I") standard. Reflexive throughout. Vulnerability and emotional honesty acceptable as epistemology. Analytical distance still required.

### Requirements

- Ellis/Bochner framework cited or equivalent methodological anchor.
- Yin single-case rationale (revelatory, longitudinal, extreme/unique) stated.
- Reflexivity explicit, not merely implied.
- Theoretical grounding (links personal story to broader concepts).

### Reviewer risks

- Reads as memoir, not research
- Lacks theoretical grounding
- Unclear why this case matters beyond the author
- Insufficient analytical distance

### Preemption

- Cite autoethnographic tradition (Ellis 2004; Ellis, Adams & Bochner 2011; Kaltenhauser et al. 2024 for HCI venues).
- State the case's rationale explicitly ("This is a revelatory case because…").
- Pair narrative scenes with analytical moves ("This moment illustrates X concept because…").
- Name the generalization type: analytical, not statistical.

---

## 4. Theory paper

No empirical data. Argument-driven. Proposes a framework, concept, or formal result. Common in philosophy, theoretical cs, linguistics.

### Structure

Problem → Thesis → Argument or proof → Consequences. Or: Prior work → Limitations → Proposed framework → Applications.

### Voice

Formal. Authorial "we" or third-person impersonal. Precise definitions. Minimal narrative.

### Requirements

- Formal definitions of all introduced terms.
- Logical coherence; every claim follows from the previous.
- Dense citation to prior theory (the framework must be positioned).
- Concrete consequences (testable predictions, design implications, or applications).

### Reviewer risks

- Vague definitions
- Circular reasoning
- Not positioned against prior theory
- No testable or actionable consequences
- Insufficient novelty (just restates known concepts)

### Preemption

- Set off definitions typographically and use terms consistently.
- Include an "Implications" or "Applications" section; do not end at the abstract framework.
- Cite densely in Related Work to position the contribution.
- Explicitly state what the framework predicts, enables, or rules out.

---

## 5. Systematic review / meta-analysis

Synthesis of existing literature following PRISMA 2020. Distinct from a narrative review.

### Structure (PRISMA 2020)

Introduction → Methods (search strategy, inclusion/exclusion, data extraction, risk-of-bias assessment) → Results (PRISMA flow diagram, included studies, syntheses) → Discussion.

### Voice

Formal. Authorial "we" in Methods and Discussion. Passive voice acceptable for describing study characteristics.

### Requirements

- PRISMA 2020 27-item checklist completed.
- PRISMA flow diagram (identified → screened → eligible → included).
- Explicit inclusion and exclusion criteria (PICO or equivalent).
- Search strategy reproducible: databases, date range, search strings.
- Risk-of-bias assessment per included study (Cochrane ROB 2, ROBINS-I, or domain-specific tool).
- If meta-analysis: forest plots, heterogeneity (I²), funnel plot if ≥10 studies.

### Reviewer risks

- Vague inclusion criteria
- Search strategy not reproducible
- Missing bias assessment
- Cherry-picked studies
- No PRISMA diagram

### Preemption

- Follow PRISMA 2020 checklist and cite it.
- Pre-register the protocol (PROSPERO for health; OSF otherwise).
- Include the flow diagram as Figure 1.
- Report bias assessment in a table.

---

## 6. Position paper / vision paper

Argument-driven. Takes a stance and defends it. Explicit about being a position, not an empirical result.

### Structure

Scope statement → Problem → Proposed position → Argument → Counterarguments considered → Implications.

### Voice

Assertive but acknowledging. Authorial "we" standard. First-person "I" acceptable in some venues (opinion pieces, editorials).

### Requirements

- Narrow scope stated in first paragraph ("This is a position paper on X, not a comprehensive treatment of Y").
- Acknowledgment that this is a position, not empirical.
- Counterarguments addressed (not strawmanned).
- Reasoned argumentation, not mere assertion.
- Existing evidence cited where relevant, but the paper does not produce new data.

### Reviewer risks

- Scope too broad
- Opinion asserted without argument
- Counterarguments ignored or strawmanned
- Unclear what the paper is arguing for

### Preemption

- Open with a clear thesis sentence.
- State the scope boundary explicitly.
- Devote a section to the strongest counterarguments.
- End with concrete implications (what should change based on this position).

---

## Quick decision table

| Your contribution | Paper type |
|-------------------|-----------|
| New data + statistical analysis | Empirical quantitative |
| Interviews, observation, text analysis of participants | Empirical qualitative |
| Your own sustained experience as data | Autoethnography |
| A formal framework, concept, or proof | Theory |
| Structured synthesis of existing literature | Systematic review |
| An argument for a stance without new data | Position paper |

If the paper has multiple contributions, pick the primary one and note the secondary in the Introduction.
