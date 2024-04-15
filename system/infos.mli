type t
val get_name : t -> string
val get_description : t -> string
val make_infos : string -> string -> t
val infos_to_str : t -> string