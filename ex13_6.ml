(* グラフの中の節（駅）を表す型 *) 
#use "ex10_11.ml"
#use "ex12_1.ml"

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 目的：Vに入っている点ひとつに対して更新を行う *)
(* koushin1: eki_t -> eki_t -> eki_t *)
let koushin1 p q = match (p, q) with
  ({namae = p_n; saitan_kyori = p_sk; temae_list = p_tl},
   {namae = q_n; saitan_kyori = q_sk; temae_list = q_tl}) ->
    let pqkan_kyori = ekikan_kyori p_n q_n global_ekikan_list in
      if pqkan_kyori = infinity then q
      else let new_kyori = p_sk +. pqkan_kyori in
        if new_kyori < q_sk then {namae = q_n; saitan_kyori = new_kyori; temae_list = q_n :: p_tl}
                            else q
      
(* テスト *) 
let test1 = koushin1 eki3 eki1 = eki1 
let test2 = koushin1 eki3 eki2 = eki2 
let test3 = koushin1 eki3 eki3 = eki3 
let test4 = koushin1 eki3 eki4 = 
	{namae="後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]} 
let test5 = koushin1 eki2 eki1 = 
	{namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]} 
let test6 = koushin1 eki2 eki2 = eki2 
let test7 = koushin1 eki2 eki3 = eki3 
let test8 = koushin1 eki2 eki4 = eki4 
