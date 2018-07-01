(* 駅名が見つからなかったことを示す例外 *) 
exception No_such_station of string

(* 目的：ローマ字の駅名と駅名リストを受け取り、その駅名の漢字表記を返す *)
(* romaji_to_kanji: string -> ekimei_t list -> string *)
let rec romaji_to_kanji romaji lst = match lst with
    [] -> raise (No_such_station(romaji))
  | {kanji=kj; kana=kn; romaji=r; shozoku=s} :: rest ->
      if romaji = r then kj
      else romaji_to_kanji romaji rest

(* テスト *) 
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷" 
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷" 
let test3 = romaji_to_kanji "otemachi" global_ekimei_list = "大手町" 
(* let test4 = romaji_to_kanji "osaka" global_ekimei_list *) 
   (* No_such_station "osaka" を起こす *) 
