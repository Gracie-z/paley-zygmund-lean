import Mathlib.Probability.Variance
import Mathlib.MeasureTheory.Integral.Bochner
import Mathlib.MeasureTheory.Measure.MeasureSpace

open MeasureTheory ProbabilityTheory

/-- **Paley–Zygmund inequality**. For a non-negative random variable `Z` with finite second
moment, `P(Z ≥ θ E[Z]) ≥ (1 - θ)² (E[Z])² / E[Z²]`. -/
theorem paley_zygmund {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}
    [IsProbabilityMeasure μ]
    {Z : Ω → ℝ} (hZ_nn : 0 ≤ᵐ[μ] Z) (hZ_meas : AEStronglyMeasurable Z μ)
    (hZ2 : Memℒp Z 2 μ)
    {θ : ℝ} (hθ0 : 0 ≤ θ) (hθ1 : θ ≤ 1) :
    (1 - θ) ^ 2 * (∫ ω, Z ω ∂μ) ^ 2 ≤
      (∫ ω, Z ω ^ 2 ∂μ) * (μ {ω | θ * ∫ ω', Z ω' ∂μ ≤ Z ω}).toReal := by
  sorry
