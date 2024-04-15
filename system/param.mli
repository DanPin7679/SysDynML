type t
val get_name : t -> string
val get_description : t -> string
val make_param : string -> string -> t

val param_to_str : t -> string