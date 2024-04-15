open Graphics

let rec wait_until_q_pressed t =
  let event = wait_next_event [Key_pressed] in
    if event.key == 'q' 
      then exit 0
      else wait_until_q_pressed t



let chart (x:float list) (y:float list) =
  let w:int = 1728 in 
  let h:int = 1117 in
  let back = rgb 5 5 15 in
  
  open_graph (" "^string_of_int w^"x"^string_of_int h);
  set_window_title "SynDyn App";
  set_color back;  
  fill_rect 0 0 w h;
  

  set_line_width 4;
  set_color white;  
  let c_w = 500 in let c_h = 500 in
  moveto c_w c_h;
  
  List.iter2 lineto 
    (List.map int_of_float x 
      |> List.map ((+) c_w))
    (List.map int_of_float y
      |> List.map ((+) c_h)) ;

  wait_until_q_pressed true