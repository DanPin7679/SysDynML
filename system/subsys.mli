type t
val get_name : t -> string
val get_description : t -> string
val make_subsys : string -> string -> t

val subsys_to_str : t -> string
