type bop = 
  | Add
  | Sub
  | Mul
  | Div

type comp =
  | S of Stock.t
  | F of Flow.t
  | P of Param.t

type t = 
  | Val of comp
  | Integral of Stock.t * Flow.t list * Flow.t list
  | FlowEq of Flow.t * t
  | Binop of bop * t * t


