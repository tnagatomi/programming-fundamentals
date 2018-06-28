let is_even n = n mod 2 = 0

let even lst = List.filter is_even lst
