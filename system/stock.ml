type t = {
  infos : Infos.t;
}

let make_stock n d = { infos = Infos.make_infos n d}
let get_name s = Infos.get_name s.infos
let get_description s = Infos.get_description s.infos

let stock_to_str s = 
  "\nStock"^
  Infos.infos_to_str s.infos

