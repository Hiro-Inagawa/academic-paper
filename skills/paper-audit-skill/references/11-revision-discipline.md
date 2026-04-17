# 11. Revision discipline

Revision is where most of the quality lives. First drafts of academic prose are almost always too long, too passive, too nominalized, and too cautious. This file is the self-check routine.

---

## The six-pass revision

Read the paper six times, each pass focused on one thing. Do not try to fix everything on one pass.

### Pass 1. Argument

Ignore prose. Focus on claims.

- Can I state each section's main claim in one sentence?
- Does each claim have evidence, warrant, and (where needed) acknowledgment?
- Does the paper have a central thesis, and does each section serve it?

If no: the problem is structural. Go back to the plan.

### Pass 2. Structure

Ignore prose. Focus on section-level organization.

- Are the sections in the right order for this paper type?
- Does each section do only its work (no Discussion bleeding into Results)?
- Do Swales moves appear in each section?

If no: reorder sections or split paragraphs.

### Pass 3. Paragraph

Read paragraph by paragraph.

- Is there a topic sentence?
- Does every sentence relate to the topic sentence?
- Does the paragraph close with a transition or relevance statement?
- Does the paragraph flow old-to-new?

If no: rewrite the paragraph.

### Pass 4. Sentence

Read sentence by sentence.

- Is the character in the subject position?
- Is the action a strong verb, not a nominalization?
- Is the voice active (unless passive is deliberate)?
- Is the sentence 15-25 words? Longer sentences should be split or justified.
- Is clause nesting at most 2 levels deep?

If no: rewrite the sentence.

### Pass 5. Word

Read word by word.

- Any forbidden phrases (see `04-voice-negative.md` Tier 1)?
- Any nominalizations that could become verbs?
- Any clichés?
- Any jargon undefined on first use?
- Any acronyms introduced but used fewer than three times?

If yes: cut or replace.

### Pass 6. Citation and numerical consistency

Read citations and numbers.

Citations:

- Does every factual claim have a citation?
- Is every citation load-bearing?
- Are primary sources used where available?
- Is citation density appropriate for the section?
- Are in-text citations and bibliography entries consistent?

Numerical consistency across sections:

- Do numerical claims in the Abstract match values reported in Methods and Results?
- Do summary counts in the Introduction match the per-section totals elsewhere?
- Do numbers in figure captions and tables match the numbers in prose?
- If two analyses or pipelines produce slightly different counts (e.g., 6,803 vs 6,822 responses), is the discrepancy acknowledged explicitly?
- If a value is presented as a range (e.g., "177-208"), is the source of each endpoint named?

Numerical inconsistency across sections is one of the most common and damaging reviewer-attack surfaces. Reviewers who catch one inconsistency lose trust in all other numbers. Better to name the discrepancy once in Methods or Limitations than to let readers find it.

If any check fails: add, remove, correct, or reconcile.

---

## The character-action test (Williams)

For each sentence, identify the main character and the main action.

- The main character should be the grammatical subject.
- The main action should be a strong verb.

### Before

> The evaluation of the model's performance was conducted by running experiments on the test dataset.

Character: us (hidden). Action: evaluation (nominalized), conducted (weak).

### After

> We evaluated the model on the test dataset.

Character: we (subject). Action: evaluated (verb).

The revision is shorter and clearer because the character and action are prominent.

---

## The nominalization test

Nominalization = turning a verb into a noun.

| Nominalization | Verb form |
|----------------|-----------|
| implementation | implement |
| investigation | investigate |
| achievement | achieve |
| examination | examine |
| determination | determine |
| utilization | use |
| observation | observe |
| recognition | recognize |
| consideration | consider |

### Test

Can you replace the nominalized phrase with its verb form and a character as subject?

If yes and the result is clearer, revise.

If no (the abstraction is load-bearing), keep the nominalization.

### Example

Before: "The implementation of the algorithm required the consideration of memory constraints."

Can "implementation" become "implement"? Yes. Can "consideration" become "consider"? Yes.

After: "To implement the algorithm, we had to consider memory constraints."

Shorter, clearer, characters (we) in the subject position.

---

## The passive voice audit

Find every passive construction. For each, ask:

1. Is the agent obvious and uninteresting? (Methods: the person running the experiment is obvious.) → Passive OK.
2. Is the agent being deliberately de-emphasized? → Passive OK.
3. Is the agent the main character? → Active required.

### Common passive misuses

- Introduction: "It has been shown that…" → "Prior work shows…" or "Smith (2020) showed…"
- Results: "The effect was observed…" → "We observed the effect…"
- Discussion: "It can be concluded that…" → "We conclude that…" or remove metadiscourse.

### Methods is different

In Methods, passive voice is often the right choice.

> Participants were recruited via email.

The character (us) doing the recruiting is obvious; the procedure is the focus. Passive is appropriate.

---

## The old-new flow check

For each paragraph, check that each sentence begins with old (previously mentioned) information and ends with new information.

### Broken flow

> The experiment had 200 participants. Sixteen participants dropped out before the second session. Our analysis includes only completers.

Each sentence introduces a new subject. Flow is jagged.

### Fixed flow

> Our experiment recruited 200 participants. Of those, sixteen dropped out before the second session. The analysis includes only the 184 completers.

Each sentence begins with a reference to the previous. Flow is smooth.

---

## The unity test

For each paragraph:

1. Identify the topic sentence.
2. Check: does every other sentence support the topic sentence?
3. If a sentence does not support the topic, move it to another paragraph or cut.

### Broken unity

> We conducted semi-structured interviews with 14 participants. The interview protocol is in Appendix B. Our analysis used thematic coding. Participants were compensated at $25/hour. The analysis produced five themes.

Five sentences, five different topics: interview method, protocol location, analysis method, compensation, findings. Break into separate paragraphs or reorder within a focused paragraph.

### Fixed

> We conducted semi-structured interviews with 14 participants. Participants were recruited via a university email list and compensated at $25 per hour. Each interview lasted 60-90 minutes, following the protocol in Appendix B. We analyzed transcripts using thematic coding with an inductive approach. The analysis produced five themes, detailed in §4.

Five sentences, one topic (the interview procedure). Compensation now fits because it is part of the procedure.

---

## Metadiscourse trimming

Metadiscourse = language about language. Cuts usually.

### Cut

| Metadiscourse | Action |
|---------------|--------|
| "It should be noted that…" | Remove; state the fact |
| "It is important to realize that…" | Remove |
| "As we have seen…" | Remove |
| "The reader will recall…" | Remove |
| "At this point, one might ask…" | Remove; state what one asks |
| "In this section, we will…" | Remove; just do it |
| "Having established X, we now turn to Y" | Sometimes useful; usually cut |

### Keep

| Metadiscourse | Purpose |
|---------------|---------|
| "We propose…" | Stakes a claim |
| "However," "Because," "In contrast" | Names a logical relationship |
| "Section 3 presents…" | Navigation aid (long papers) |
| "First… Second… Third…" | Enumeration in a list-like paragraph |

---

## The read-aloud test

Read the paper aloud.

- Where do you run out of breath? Split the sentence.
- Where do you stumble? Rewrite the sentence.
- Where does the rhythm go flat (long chain of 20-word sentences)? Vary.
- Where does the transition feel forced? Check the logic.

If possible, have another person read the draft aloud. Their stumbles reveal structural issues your eye glosses over.

---

## Revision heuristics (quick self-check)

Ask yourself:

1. Can I cut 10% of the words without losing content?
2. Can I cut 20% of the sentences without losing argument?
3. Can I cut one paragraph per page without losing structure?
4. Can I replace at least 5 passive constructions with active?
5. Can I replace at least 10 nominalizations with verbs?
6. Can I cut every "It should be noted" and "In this paper"?

If any answer is yes: revise.

---

## The final check

Before declaring the paper done:

1. Each section has a clear claim and serves the thesis.
2. Each paragraph has a topic sentence and unity.
3. Each sentence is character-subject, action-verb, 15-25 words.
4. Active voice default; passive where deliberate.
5. Old-new information flow.
6. No Tier 1 forbidden phrases.
7. Appropriate hedging and boosters per claim strength.
8. Citations are load-bearing.
9. Read-aloud passes without stumbles.
10. Abstract summarizes the paper accurately.

If any fail: revise.

---

## When to stop revising

Revision is not infinite. Stop when:

- The argument is clear and defensible.
- The prose is correct, not ornate.
- The claims are specific and hedged appropriately.
- Further changes are stylistic preference, not substance.

Do not stop when:

- You know a claim is unsupported.
- You know a section is weak but have not looked at it.
- Reviewers have given feedback you have not yet addressed.
