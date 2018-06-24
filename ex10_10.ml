(* あらかじめ ex09_9.ml を読み込んでおく必要あり *) 
#use "ex09_9.ml" (* ekimei_t, global_ekimei_list の定義 *) 

(* 目的：ローマ字の駅名と駅名リストを受け取り、その駅名の漢字表記を返す *)
(* romaji_to_kanji: string -> ekimei_t list -> string *)
let rec romaji_to_kanji romaji lst = match lst with
    [] -> ""
  | {kanji=kj; kana=kn; romaji=r; shozoku=s} :: rest ->
      if romaji = r then kj
      else romaji_to_kanji romaji rest

(* テスト *)
let test1 = romaji_to_kanji "" global_ekimei_list = ""
let test2 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test3 = romaji_to_kanji "tenjin" global_ekimei_list = ""
