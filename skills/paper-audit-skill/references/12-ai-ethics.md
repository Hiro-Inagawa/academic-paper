# 12. AI-assisted writing ethics

Position as of 2024-2026. Policies are evolving; always check the target venue's most current guidelines. This file covers the general shape across major venues.

---

## The core distinction

Two activities, different treatment:

### Editing with AI

Grammar, spelling, punctuation, clarity improvements. AI acts as an advanced proofreader.

- Usually does NOT require disclosure.
- Analogous to using spell-check, Grammarly, or a human copyeditor.
- Human retains authorship; AI does not generate new content.

### Generating with AI

AI drafts new content: sentences, paragraphs, tables, code, figures.

- Requires disclosure at most major venues.
- Disclosure proportional to the degree of generation.
- Human is still the author; AI is not listed as an author.

---

## The author attribution rule

**Every major venue agrees: LLMs and AI tools cannot be listed as authors.**

- ACM, ICML, NeurIPS, CHI, Nature, Science, Elsevier, Wiley, Springer all have explicit policies.
- Reason: authorship implies responsibility; AI cannot be held responsible.
- If AI was used, the human author takes full responsibility for all content, including any errors introduced.

---

## Venue-specific policies

Policies as of late 2024 - early 2026. Verify current policy before submission.

### ACM (CHI, CSCW, DIS, SIGIR, etc.)

- Generative AI use must be disclosed commensurate with contribution.
- Disclosure location: Acknowledgments section, or a dedicated section.
- AI cannot be listed as an author.
- Authors take full responsibility for accuracy and appropriateness of all AI-generated content.

Full policy: `acm.org/publications/policies/new-acm-policy-on-authorship`

### ICML (and ICML-adjacent: NeurIPS, ICLR)

- Encouraged transparency about "notable ways" AI was used.
- Minor editing typically not disclosed.
- Substantial generation expected to be disclosed.
- Authors take full responsibility.

Check the current conference call for papers for specifics; policies update yearly.

### CHI / SIGCHI

- Follows ACM policy.
- In practice, acknowledgment of AI use in the Acknowledgments section is standard for substantive AI assistance.
- Positionality-style transparency about tools is valued.

### arxiv

- No formal policy.
- Community expectation: "Use AI to improve readability with human oversight."
- If the paper is substantially AI-generated, community norms suggest disclosure, though not required.

### Nature, Science, and top journals

- Generative AI use must be disclosed in Methods or Acknowledgments.
- AI cannot be listed as an author.
- Authors are accountable for AI-generated content, including for references (hallucinated citations are author's responsibility).

### Elsevier, Wiley, Springer (journal publishers)

- Similar to ACM: disclose use; AI cannot be an author; authors take responsibility.
- Specific language required in some cases (see publisher's author guide).

### Thesis (university)

- University-specific. Check graduate school policy.
- Many universities now require disclosure of AI use in theses.
- Some require a specific form describing AI tools used and how.

---

## What must be disclosed

### Almost always disclose

- AI generated new text (paragraphs, sentences, abstract).
- AI generated code that appears in the paper.
- AI generated tables or figures from scratch.
- AI generated or suggested citations that were used.
- AI generated or refined the argument structure.

### Usually does not require disclosure

- AI checked grammar, spelling, punctuation.
- AI suggested word choices in existing human-written text.
- AI improved clarity of existing phrasing.
- AI translated a passage between natural languages (though this is shifting).

### Grey area

- AI generated an outline that the human then filled in.
- AI generated a draft that the human then revised substantially.
- AI suggested a structural move (e.g., "move this to Discussion").

When in grey area: disclose.

---

## How to disclose

### Acknowledgments section

> We used [AI tool, version] to [specific use: improve clarity, generate draft code, suggest citations, etc.]. All content was reviewed and verified by the authors, who take full responsibility for the final manuscript.

Replace placeholders with specifics. Vague disclosure ("We used AI") is weaker than specific disclosure.

### Dedicated AI disclosure section

Some venues allow or encourage a dedicated section.

> **AI-Assisted Writing Disclosure.** This paper was prepared with assistance from [AI tool]. [Specific uses]. The authors reviewed all AI-generated content and are responsible for accuracy.

### In Methods (for AI-generated analysis or code)

If AI was used to analyze data or generate research artifacts:

> Data analysis was assisted by [AI tool]. We used [AI tool] for [specific task, e.g., code generation for statistical tests, thematic coding support]. All outputs were verified against [source / standard / replication].

---

## Specific risks

### Hallucinated citations

AI tools sometimes generate plausible-sounding citations that do not exist or do not support the stated claim. This is the single highest-risk failure mode for AI-assisted academic writing.

**Concrete verification protocol:**

After any AI-assisted drafting session that introduces new citations, before the draft goes to a reviewer or submission, check each citation by one of the following methods:

1. **For arXiv preprints:** Search the arXiv ID directly on `arxiv.org`. Confirm the title, authors, and year match. **Check that the arXiv ID format YYMM.NNNNN does not encode a date after today.** Future-dated IDs are a common hallucination pattern.
2. **For journal articles:** Search the DOI on `doi.org`. Confirm the full entry.
3. **For conference papers:** Search the venue proceedings (ACM Digital Library, IEEE Xplore, OpenReview). Confirm the paper exists in the proceedings.
4. **For books:** Search the ISBN on a library catalog or publisher site.
5. **For web sources:** Follow the URL. Confirm content matches the claim.
6. **For the finding itself:** Open the primary source. Find the specific page or section where the cited claim appears. If the finding is not in the source, the citation is wrong even if the paper exists.

**Signals of a hallucinated citation:**

- Author names that are plausible but do not appear on any search result.
- arXiv IDs encoding future dates.
- DOI-like strings that do not resolve.
- Numerical figures (percentages, counts) that the paper title suggests but the abstract does not confirm.
- Citation to a "recent study" where the specific source keeps shifting as you ask the AI for details.

**Mitigation:**

- Verify every citation against the primary source.
- Do not trust AI-suggested citations without verification.
- If you used AI to suggest citations, the mitigation is especially important.
- For high-stakes papers, conduct a dedicated citation-verification pass before submission. Document the verification in a separate file (e.g., `CITATION-AUDIT.md`).
- If a citation cannot be verified and the claim is load-bearing, replace the citation with a verified source or remove the claim.

### Hallucinated facts

AI tools generate confident-sounding statements that may be factually wrong.

**Mitigation:**
- Verify every factual claim against a trusted source.
- Especially verify numerical values, names, dates, and specific claims about prior work.

### Unintended plagiarism

AI tools may reproduce text from training data, creating inadvertent plagiarism.

**Mitigation:**
- Run a plagiarism check (iThenticate, Turnitin) before submission.
- If passages match existing work, cite or rewrite.
- Be especially careful with AI-generated related work sections.

### Biased framings

AI tools may insert biased framings (e.g., overclaiming, specific political positions, overconfident generalizations).

**Mitigation:**
- Review AI-generated content for framing.
- Apply the hedging discipline from `03-voice-positive.md` and `04-voice-negative.md`.
- Especially scrutinize claims about groups of people, contested findings, or policy implications.

---

## Attribution in bibliographies

### For AI-generated text

Do not cite the AI tool as a source (unless the paper is specifically about the AI tool).

### For AI tool documentation (if used substantively)

If you used a specific AI feature that should be cited (e.g., a specific model's reasoning chain), cite the model's documentation or paper:

```bibtex
@misc{anthropic2024claude,
  author       = {{Anthropic}},
  title        = {Claude [Model Version]},
  year         = {2024},
  howpublished = {\url{https://anthropic.com}},
  note         = {Accessed: YYYY-MM-DD}
}
```

### For prompts (if reproducibility matters)

Some papers include the prompt used in an appendix, especially for AI-assisted analysis. Include exact prompt text.

---

## The responsibility rule

Regardless of AI use, the human author is responsible for:

- Every fact in the paper.
- Every citation in the paper.
- Every claim in the paper.
- The argument's coherence.
- The accuracy of any AI-generated content.

If an AI generated a hallucinated citation and you did not catch it, the error is yours.

---

## What this skill does and does not do

This skill assists with drafting, structuring, and revising academic papers. Usage of this skill, by itself, is minor editing assistance and typically does not require disclosure.

If you use this skill to:

- Draft sections you then edit. → Disclose "AI-assisted drafting."
- Draft sections you use largely as-is. → Disclose "AI-generated with author review."
- Check prose for forbidden phrases. → Typically does not require disclosure.
- Check structural moves. → Typically does not require disclosure.

The judgment call is yours. When in doubt, disclose.

---

## Disclosure checklist

Before submission:

1. Did AI generate substantive new content in this paper?
2. If yes, have I disclosed the tool, the specific use, and my review process?
3. Have I verified all AI-generated citations against primary sources?
4. Have I verified all AI-generated facts?
5. Have I run a plagiarism check?
6. Does my disclosure follow the venue's specific policy?
7. Am I prepared to take responsibility for all content, including AI-assisted?

If any answer is no: address before submission.

---

## Policy links

- ACM: `acm.org/publications/policies/new-acm-policy-on-authorship`
- ICML: `icml.cc/Conferences/2025/CallForPapers`
- SIGCHI: `medium.com/sigchi/acm-publications-policy-guidance`
- Nature: `nature.com/nature-portfolio/editorial-policies/ai`
- arxiv: no formal policy; see `arxiv.org/help/moderation`

Check current versions before submission.
