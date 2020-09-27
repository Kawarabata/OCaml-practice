(* 目的：現在の気温tが15以上25以下かどうかチェックする *)
(* kaiteki : int -> bool *)
let kaiteki t = 15 <= t && t <= 25

(* 目的：現在の気温かから快適度を表す文字列を計算する *)
(* kion : int -> string *)
let kion t =
  if kaiteki t then "快適"
                        else "普通"

(* let kion t =
  if t < 15 then "普通"
            else if t <= 25 then "快適"
                 else "普通" *)

(* テスト *)
let test1 = kion 7 = "普通"
let test1 = kion 15 = "快適"
let test1 = kion 20 = "快適"
let test1 = kion 25 = "快適"
let test1 = kion 28 = "普通"