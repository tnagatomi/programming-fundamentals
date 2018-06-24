#use "ex12_1.ml"

(* 目的：ekimei_t のリストから eki_t のリストを作る *)
(* make_eki_list: ekimei_t list -> eki_t list *)
let rec make_eki_list ekimei_list = match ekimei_list with
    [] -> []
  | {kanji=kj; kana=kn; romaji=r; shozoku=s} :: rest ->
      {namae=kj; saitan_kyori=infinity; temae_list=[]} :: make_eki_list rest
