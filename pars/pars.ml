open Ast

let parse (s : string) : expr =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


let step e =
  match e with
  | Sys _ -> failwith "Comp not implemented"

let run (s : string) : expr =
  let e = parse s in 
  e