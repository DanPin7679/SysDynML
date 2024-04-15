type t
val get_name : t -> string
val get_description : t -> string
val make_flow : string -> string -> t


val flow_to_str : t -> string