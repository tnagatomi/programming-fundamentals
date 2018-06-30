type nengou_t = Meiji of int    (* 明治 *) 
              | Taisho of int   (* 大正 *) 
              | Showa of int    (* 昭和 *) 
              | Heisei of int   (* 平成 *) 

let to_seireki nengou = match nengou with 
    Meiji (n) -> n + 1867 
  | Taisho (n) -> n + 1911 
  | Showa (n) -> n + 1925 
  | Heisei (n) -> n + 1988 

let nenrei birth_year current_year =
  to_seireki current_year - to_seireki birth_year
