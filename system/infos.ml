type t = {
  name : string; 
  description : string 
}

let make_infos n d = {
  name = n; 
  description = d
}

let get_name s = s.name  
let get_description s = s.description
let infos_to_str i = "\n    name: "^(get_name i)^"\n    description: "^(get_description i)


