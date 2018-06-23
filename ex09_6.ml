(* 目的：要素を前から順にくっつけた文字列を返す *)
(* concat : string list -> string *)
let concat lst = ""

(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["a"] = "a"
let test3 = concat ["a"; "b"] = "ab"
let test4 = concat ["abc"; "fg"; "xyz"] = "abcfgxyz"
