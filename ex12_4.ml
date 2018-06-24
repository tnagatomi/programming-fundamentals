#use "ex08_5.ml"

(* 駅名リストの例 *) 
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

let rec ekimei_insert ekimei_lst ekimei = match ekimei_lst with
    [] -> [ekimei]
  | ({kanji=kj1; kana=kn1; romaji=r1; shozoku=s1} as first) :: rest ->
      match ekimei with {kanji=kj2; kana=kn2; romaji=r2; shozoku=s2} ->
        if kn1 = kn2 then ekimei_insert rest ekimei
        else if kn1 < kn2 then first :: ekimei_insert rest ekimei
        else ekimei :: ekimei_lst

(* テスト *) 
let test1 = ekimei_insert [] {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} 
	    = [{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}] 
let test2 = ekimei_insert [ 
	{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
	{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
	{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
	{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
	{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} 
	] 
	{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"} 
= [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} 
] 

(* 目的：ekimei_t list をひらがな順に整列し、駅の重複を取り除く *)
(* seiretsu: ekimei_t list -> ekimei_t list *)
let rec seiretsu ekimei_lst = match ekimei_lst with
    [] -> []
  | first :: rest -> ekimei_insert (seiretsu rest) first

(* テスト *) 
let test3 = seiretsu [] = [] 
let test4 = seiretsu ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} 
] 