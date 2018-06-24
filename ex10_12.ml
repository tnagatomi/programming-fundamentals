#use "ex10_10.ml"
#use "ex10_11.ml"

(* 目的：駅間の距離を示すメッセージを表示する *)
(* kyori_wo_hyoji: string -> string -> string *)
let kyori_wo_hyoji eki1 eki2 =
  let eki1_kanji = romaji_to_kanji eki1 global_ekimei_list in
  let eki2_kanji = romaji_to_kanji eki2 global_ekimei_list in
    if eki1_kanji = "" then eki1 ^ "という駅は存在しません"
    else if eki2_kanji = "" then eki2 ^ "という駅は存在しません"
    else
    let kyori = ekikan_kyori eki1_kanji eki2_kanji global_ekikan_list in
      if kyori != infinity then eki1_kanji ^ "から" ^ eki2_kanji ^ "までは" ^ string_of_float kyori ^ "kmです"
      else eki1_kanji ^ "と" ^ eki2_kanji ^ "はつながっていません"

(* テスト *)
let test1 = kyori_wo_hyoji "myogadani" "shinotsuka" = "茗荷谷から新大塚までは1.2kmです"
let test2 = kyori_wo_hyoji "ikebukuro" "heiwadai" = "池袋と平和台はつながっていません"
let test3 = kyori_wo_hyoji "tenjin" "shibuya" = "tenjinという駅は存在しません"
