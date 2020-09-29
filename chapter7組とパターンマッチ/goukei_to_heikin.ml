let goukei kokugo math english science society = kokugo + math + english + science + society

(* 5教科の点数を与えられたらその合計点と平均点を組にして返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * float *)
let goukei_to_heikin goukei = (goukei, goukei / 6)
