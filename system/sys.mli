type t
val get_name : t -> string
val get_description : t -> string
val make_system : string -> string -> t

val add_subsys :  t -> Subsys.t -> unit
val sys_to_str : t -> string
val get_subsys : t -> Subsys.t list
