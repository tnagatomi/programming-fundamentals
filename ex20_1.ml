(* 赤か黒を示す型 *)
type color_t = Red | Black

(* 赤黒木 *)
type ('a, 'b) rb_tree_t = Empty
                        | Node of ('a, 'b) rb_tree_t * 'a * 'b * color_t * ('a, 'b) rb_tree_t
