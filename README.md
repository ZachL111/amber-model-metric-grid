# amber-model-metric-grid

`amber-model-metric-grid` is a Haskell project in ml utilities. Its focus is to create a Haskell reference implementation for metric workflows, centered on visual model generation, layout fixtures, and stable geometry snapshots.

## Purpose

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how feature drift and metric stability should influence a review result.

## Amber Model Metric Grid Review Notes

Start with `explainability` and `window width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/amber-model-metric-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `window width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added Haskell path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
