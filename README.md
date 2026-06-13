# Paley–Zygmund Inequality in Lean 4

A formal proof of the [Paley–Zygmund inequality](https://en.wikipedia.org/wiki/Paley%E2%80%93Zygmund_inequality) (second-moment method) using Lean 4 and Mathlib.

## Statement

For a non-negative random variable *Z* with finite second moment and θ ∈ [0, 1]:

$$\Pr(Z \geq \theta \, \mathbb{E}[Z]) \;\geq\; (1 - \theta)^2 \;\frac{(\mathbb{E}[Z])^2}{\mathbb{E}[Z^2]}$$

## Proof strategy

1. Split the expectation: E[Z] = E[Z · 1_{Z ≥ θE[Z]}] + E[Z · 1_{Z < θE[Z]}]
2. Bound the second term by θ · E[Z]
3. Apply Cauchy–Schwarz to the first term
4. Rearrange to obtain the inequality

## Status

Work in progress — theorem statement is set up, proof forthcoming.

## Building

Requires Lean 4 and Mathlib. To build:

```bash
lake exe cache get
lake build
```

## References

- Paley, R.E.A.C.; Zygmund, A. (1932). "A note on analytic functions in the unit circle". *Mathematical Proceedings of the Cambridge Philosophical Society*.
