import Lake

open Lake DSL System

package mathport {
  dependencies := #[{
    name := "mathlib",
    -- We point to a particular commit in mathlib4,
    -- as changes to tactics in mathlib4 may cause breakages here.
    -- Please ensure that `lean-toolchain` points to the same release of Lean 4
    -- as this commit of mathlib4 uses.
    src := Source.git "https://github.com/leanprover-community/mathlib4.git" "809d064846c4171b3bdf358b067c4211baa4e236"
  }],
  binRoot := `MathportApp
  moreLinkArgs := if Platform.isWindows then #[] else #["-rdynamic"]
}
