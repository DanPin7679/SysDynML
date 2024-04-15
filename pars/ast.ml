type infos = Info of string * string


type comp = 
| Subsys of infos * comp list
| State of infos
| Flow of infos

type expr =
  | Sys of infos * string list * comp list
