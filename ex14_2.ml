type gakusei_t = {
  namae : string;     (* 名前 *)
  tensuu : int;       (* 点数 *)
  seiseki : string;   (* 成績 *)
}

let is_A gakusei = match gakusei with
  {namae = n; tensuu = t; seiseki = s} -> s = "A"

let count_A lst = List.length (List.filter is_A lst)
