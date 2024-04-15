let p = print_endline "In Prob"

(*
open System 

type tspan = int * int * int

 type t = 
  | Discrete of Infos.t * Sys.t * tspan


let make_discrete n d (s:Sys.t) ts = 
  let i = Infos.make_infos n d in
    Discrete(i, s, ts)

let rec simulate (prob:t) =
  match prob with
  | Discrete(_, s, (t0, tn, _)) -> 
    for _=t0 to tn do 
      step s 
    done
  and step s =
    let subs = Sys.get_subsys s in 
    let stocks = Subsys.get_stock (List.hd subs) in 
    List.iter Stock.eval stocks

let tspan_to_str t =  
  match t with
  | (a,b,c) -> ("\ntspan: "^string_of_int a^" * "^string_of_int b^" * "^string_of_int c)

let problem_to_str (p:t) : string = 
  match p with
    | Discrete(i,s,t) -> 
        "\nProblem"^
        Infos.infos_to_str i^
        "\n  System:"^
        Sys.sys_to_str s^
        "|n"^tspan_to_str t

let rec eval (eq:t) : float =
  match eq with
    | Binop(b,x,y)  -> binop_eval b x y
    | Const p -> Value.eval p
 
and binop_eval b (x:Value.t) (y:Value.t) : float = 
  match b, x, y with
    | Add, x, y -> (Value.eval x +. Value.eval y)
    | Mul, x, y -> (Value.eval x *. Value.eval y)
    | Sub, x, y -> (Value.eval x -. Value.eval y)
    | Div, x, y -> (Value.eval x /. Value.eval y)


  let rec eq_to_str (eq:t) : string =
    match eq with
      | Binop(b,x,y)  -> binop_to_str b x y
      | Const v -> Value.value_to_str v
   
  and binop_to_str b x y : string = 
    
    
    match b, x, y with
    | Add, x, y -> Value.value_to_str x^"+"^Value.value_to_str y
    | Mul, x, y -> Value.value_to_str x^"*"^Value.value_to_str y
    | Sub, x, y -> Value.value_to_str x^"-"^Value.value_to_str y
    | Div, x, y -> Value.value_to_str x^"/"^Value.value_to_str y
*)