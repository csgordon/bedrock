Require Import AutoSep Malloc Server.


Definition program := link mallocM m.

Theorem closed : Imports program = LabelMap.empty _.
  reflexivity.
Qed.

Theorem ok : moduleOk program.
  link mallocMOk ok.
Qed.

Require Import AMD64_gas.

Set Printing Depth 999999.
Eval compute in moduleS program.
