type t = {
  infos : Infos.t;
}

let make_param n d = { infos = Infos.make_infos n d}
let get_name s = Infos.get_name s.infos
let get_description s = Infos.get_description s.infos


let param_to_str s = 
  Infos.infos_to_str s.infos