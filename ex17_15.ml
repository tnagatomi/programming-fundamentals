(* あらかじめ ex10_10.ml, ex15_5.ml, ex17_14.ml を読み込んでおく必要あり *) 
#use "ex10_10.ml" (* romaji_to_kanji の定義 *) 
#use "ex15_5.ml" (* saitan_wo_bunri の定義 *) 
#use "ex17_14.ml" (* get_ekikan_kyori の定義 *) 
 
(* ex14_12.ml を読み込むと ekimei_t 型、eki_t 型の定義が２度、読み込まれて 
   しまうので make_initial_eki_list の定義を以下に直接、展開 *) 
 
(* 目的：ekimei list から eki list を作る *) 
(* make_initial_eki_list : ekimei_t list -> string -> eki_t list *) 
let make_initial_eki_list ekimei_list kiten = 
  List.map (fun ekimei -> match ekimei with 
	     {kanji = k; kana = a; romaji = r; shozoku = s} -> 
	       if k = kiten 
	       then {namae = k; saitan_kyori = 0.; temae_list = [k]} 
	       else {namae = k; saitan_kyori = infinity; temae_list = []}) 
	   ekimei_list 
 
(* 目的：未確定の駅のリスト v を必要に応じて更新したリストを返す *) 
(* koushin : eki_t -> eki_t list -> ekikan_tree_t -> eki_t list *) 
let koushin p v ekikan_tree = match p with 
  {namae = pn; saitan_kyori = ps; temae_list = pt} -> 
    List.map (fun q -> match q with 
	       {namae = qn; saitan_kyori = qs; temae_list = qt} -> 
		 let kyori = get_ekikan_kyori pn qn ekikan_tree in 
		 if kyori = infinity 
		 then q 
		 else if ps +. kyori < qs 
		 then {namae = qn; saitan_kyori = ps +. kyori; 
				   temae_list = qn :: pt} 
		 else q) 
	     v 

(* 目的：未確定駅のリストと駅間リストから、各駅への最短路を求める *) 
(* dijkstra_main : eki_t list -> ekikan_tree_t -> eki_t list *) 
let rec dijkstra_main eki_lst ekikan_tree = match eki_lst with
    [] -> []
  | first :: rest ->
      let (saitan, nokori) = saitan_wo_bunri (first :: rest) in
      let eki_lst2 = koushin saitan nokori ekikan_tree in
      saitan :: dijkstra_main eki_lst2 ekikan_tree

(* 目的：受け取った eki_list から shuten のレコードを探し出す *) 
(* find : string -> eki_t list -> eki_t *) 
let rec find shuten eki_list = match eki_list with 
    [] -> {namae = ""; saitan_kyori = infinity; temae_list = []} 
  | ({namae = n; saitan_kyori = s; temae_list = t} as first) :: rest -> 
      if n = shuten then first else find shuten rest 


(* 目的：始点と終点を受け取ったら、最短路を求め、終点のレコードを返す *) 
(* dijkstra : string -> string -> eki_t *) 
let dijkstra shiten_romaji shuten_romaji =
  let shiten = romaji_to_kanji shiten_romaji global_ekimei_list in
  let shuten = romaji_to_kanji shuten_romaji global_ekimei_list in
  let eki_list = make_initial_eki_list global_ekimei_list shiten in
  let eki_list2 = dijkstra_main eki_list global_ekikan_tree in
  find shuten eki_list2

(* テスト *) 
let test1 = dijkstra "shibuya" "gokokuji" = 
  {namae = "護国寺"; saitan_kyori = 9.8; 
   temae_list = 
     ["護国寺"; "江戸川橋"; "飯田橋"; "市ヶ谷"; "麹町"; "永田町"; 
      "青山一丁目"; "表参道"; "渋谷"]} 
let test2 = dijkstra "myogadani" "meguro" = 
  {namae = "目黒"; saitan_kyori = 12.7000000000000028; 
   temae_list = 
     ["目黒"; "白金台"; "白金高輪"; "麻布十番"; "六本木一丁目"; "溜池山王"; 
      "永田町"; "麹町"; "市ヶ谷"; "飯田橋"; "後楽園"; "茗荷谷"]} 
 