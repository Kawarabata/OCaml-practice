type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
}

type ekikan_t = {
  kiten: string;
  shuten: string;
  keiyu: string;
  kyori: float;
  jikan: int;
}

(* 目的：駅名ekimei_tを受け取ったら「路線, 駅名(かな)」の形式の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  { kanji = kj; kana = kn; romaji = r; shozoku = s; } -> s ^ ", " ^ kj ^ "(" ^ kn ^ ")"

(* テスト *)
let test1 = hyoji { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" } = "丸ノ内線, 茗荷谷(みょうがだに)"

