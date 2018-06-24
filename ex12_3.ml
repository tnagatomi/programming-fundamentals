#use "ex12_1.ml"

(* 駅リストの例 *) 
 
let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 

(* 目的：eki_t list を初期化する *)
(* shokika: eki_t list -> string -> eki_t list *)
let rec shokika eki_list kiten = match eki_list with
    [] -> []
  | ({namae=n; saitan_kyori=s; temae_list=t} as first) :: rest ->
      let shokika_rest = shokika rest kiten in
        if kiten = n then {namae = n; saitan_kyori = 0.0; temae_list = [n]} :: shokika_rest
        else first :: shokika_rest

(* テスト *) 
let test1 = shokika [] "茗荷谷" = [] 
let test2 = shokika eki_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
]
