#use "ex08_5.ml"

let ekimei1 = {kanji = "赤坂駅"; kana = "あかさかえき"; romaji = "akasakaeki"; shozoku = "地下鉄空港線"}
let ekimei2 = {kanji="渋谷"; kana="しぶや"; romaji="shibuya"; shozoku="銀座線"}
let ekimei3 = {kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="千代田線"}

(* 目的：ekimei_t 型のデータを受け取り「路線名, 駅名（かな）」の形式の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = ""

(* テスト *)
let test1 = hyoji ekimei1 = "地下鉄空港線, 赤坂駅（あかさかえき）"
let test2 = hyoji ekimei2 = "銀座線、渋谷（しぶや）"
let test3 = hyoji ekimei3 = "千代田線、大手町（おおてまち）"
