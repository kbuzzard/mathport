/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
import Lean
import Mathport.Util.Misc
import Mathport.Util.Json
import Mathport.Bridge.Path

namespace Mathport

open Lean Lean.Json

structure Config where
  pathConfig         : Path.Config
  defEqConstructions : HashSet String := {}
  forceAbbrevs       : HashSet Name := {}
  stringsToKeep      : HashSet Name := {}
  disabledInstances  : HashSet Name := {}
  neverSorries       : HashSet Name := {}
  sorries            : HashSet Name := {}
  skipProofs         : Bool := false
  skipDefEq          : Bool := true
  error2warning      : Bool := false
  deriving FromJson

end Mathport
