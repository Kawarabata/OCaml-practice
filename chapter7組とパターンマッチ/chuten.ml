(* x, yの平面座標を二つ受け取ったらその中点の座標を返す *)
(* chuten (int * int) * (int * int) -> int * int *)

let chuten pair = match pair with
  ((a, b), (c, d)) -> ((a+c)/2, (b+d)/2)

(* テスト *)
let test1 = chuten ((5, 5), (-5, -5)) = (0, 0)
