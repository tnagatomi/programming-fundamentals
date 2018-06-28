let concat1 first rest_result = first ^ rest_result

let concat lst = List.fold_right concat1 lst ""
