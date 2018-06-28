#use "ex13_6.ml"

let koushin p v = 
  let koushin1 p q = match (p, q) with
    ({namae = p_n; saitan_kyori = p_sk; temae_list = p_tl},
    {namae = q_n; saitan_kyori = q_sk; temae_list = q_tl}) ->
      let pqkan_kyori = ekikan_kyori p_n q_n global_ekikan_list in
        if pqkan_kyori = infinity then q
        else let new_kyori = p_sk +. pqkan_kyori in
          if new_kyori < q_sk then {namae = q_n; saitan_kyori = new_kyori; temae_list = q_n :: p_tl}
                              else q
  in List.map (koushin1 p) v

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 
 
(* テスト *) 
let test1 = koushin eki2 [] = [] 
let test2 = koushin eki2 lst = 
 [{namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}; 
  eki2; eki3; eki4] 
