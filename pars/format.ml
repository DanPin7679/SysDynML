open Ast 

let rec array_to_string a = 
  match a with
  | [] -> ""
  | hd::tl -> "    "^hd^"\n"^array_to_string tl
  
let info_to_str i =
  match i with
  | Info(n, d) -> "  name: " ^n ^"\n  description: "^d

let rec comp_to_str c = 
  match c with
  | Subsys(i, s)  ->
    "\nSub-System\n"^
    info_to_str i^"\n"^
    array_to_string (List.map comp_to_str s)
  | State(i)  -> 
      "\nStock\n"^
      info_to_str i^"\n"
  | Flow(i)  -> 
    "\nFlow\n"^
    info_to_str i^"\n"

let sys_to_str s = 
  match s with
  | Sys(i, cn, cs) -> 
      "\nSystem: \n"^
      info_to_str i^"\n"^
      array_to_string cn^
      array_to_string (List.map comp_to_str cs)



