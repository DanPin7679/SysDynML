type t
val get_name : t -> string
val get_description : t -> string
val make_stock : string -> string -> t
val stock_to_str : t -> string