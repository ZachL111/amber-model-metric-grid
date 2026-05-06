# Review Journal

I treated `amber-model-metric-grid` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 199, lane `ship`
- `stress`: `window width`, score 171, lane `ship`
- `edge`: `metric stability`, score 175, lane `ship`
- `recovery`: `explainability`, score 265, lane `ship`
- `stale`: `feature drift`, score 222, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
