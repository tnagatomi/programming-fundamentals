#use "ex09_10.ml" (* ekikan_t, global_ekikan_list の定義 *) 

(* 目的：2駅間の距離を返す *)
(* get_ekikan_kyori: string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori eki1 eki2 ekikan_list = match ekikan_list with
    [] -> infinity
  | {kiten=kiten; shuten=shuten; keiyu=k; kyori=kyori; jikan=j} :: rest ->
      if kiten = eki1 && shuten = eki2 then kyori
      else if kiten = eki2 && shuten = eki1 then kyori
      else get_ekikan_kyori eki1 eki2 rest

(* テスト *)
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "新大塚" "茗荷谷" global_ekikan_list = 1.2
let test3 = get_ekikan_kyori "池袋" "平和台" global_ekikan_list = infinity
