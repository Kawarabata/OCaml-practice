(* 目的：二次方程式の係数を与えられたら判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

(* 目的：二次方程式の係数を与えられたらその解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c =
  if hanbetsushiki a b c > 0.0 then 2
                             else if hanbetsushiki a b c = 0.0 then 1
                                  else 0

(* 目的：二次方程式の係数を与えられたら虚数解を持つかどうかを判定する *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c = hanbetsushiki a b c < 0.0

(* テスト *)
let test1 = hanbetsushiki 1.0 4.0 4.0 = 0.0
let test2 = hanbetsushiki 4.0 9.0 6.0 = -15.0

let test3 = kai_no_kosuu 1.0 4.0 4.0 = 1
let test4 = kai_no_kosuu 1.0 (-8.0) 15.0 = 2
let test5 = kai_no_kosuu 1.0 2.0 15.0 = 0

let test6 = kyosuukai 1.0 (-8.0) 15.0 = false
let test7 = kyosuukai 1.0 2.0 15.0 = true