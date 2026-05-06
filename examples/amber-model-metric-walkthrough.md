# Amber Model Metric Grid Walkthrough

This note is the quickest way to read the extra review model in `amber-model-metric-grid`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 199 | ship |
| stress | window width | 171 | ship |
| edge | metric stability | 175 | ship |
| recovery | explainability | 265 | ship |
| stale | feature drift | 222 | ship |

Start with `recovery` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stress` becomes less cautious without a clear reason, I would inspect the drag input first.
