type t = {
  infos : Infos.t;
  mutable subsys : Subsys.t list
}

let make_system n d = { infos = Infos.make_infos n d; subsys = []}
let get_name s = Infos.get_name s.infos
let get_description s = Infos.get_description s.infos
let add_subsys s ss = s.subsys <- ss :: s.subsys
let get_subsys s = s.subsys

let sys_to_str s = 
  "\nSystem"^
  Infos.infos_to_str s.infos^
  "\n  Sub-Systems:"^
  String.concat "" (List.map Subsys.subsys_to_str s.subsys)


