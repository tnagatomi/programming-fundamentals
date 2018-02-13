(* 目的：鶴と亀の合計の数 gokei  足の数の合計 ashi に応じた鶴の数を計算する *)
(* tsurukame : int -> int -> int *)
let tsurukame gokei ashi = (gokei * 4 - ashi) / 2 

(* テスト *)
let test1 = tsurukame 0 0 = 0
let test2 = tsurukame 1 2 = 1
let test3 = tsurukame 3 8 = 2
