open System

let _ = 
  let birth = Flow.make_flow "birth" "Birth" in 
  let death = Flow.make_flow "death" "Death" in 
  let pop = Stock.make_stock "P" "Population at time t" in

  print_endline (Flow.flow_to_str birth);
  print_endline (Flow.flow_to_str death);
  print_endline (Stock.stock_to_str pop);
(*
open Chart

let _ = 
  let l = line 0 0 200 300 in 
  let svg =  draw_svg l in
  let file = create_svg_file svg in 
  Managefile.create "test.svg" file 
*)