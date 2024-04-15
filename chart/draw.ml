type point =
  | P2D of int * int
  | P3D of int * int * int

type size = 
  | S2D of int * int
  | S3D of int * int * int

type color = 
  | RGB of int * int * int

type shapes =
  | File of shapes list
  | Line of point * point * color
  | Rect of point * size
  | Circle of point * size
  | Ellipse of point * size
  | Polyline of point list
  | Polygon of point list

 let line x y a b = Line (P2D(x,y),P2D(a,b), RGB(0,0,0)) 

let color_to_string c = 
  match c with
  | RGB(r,g,b) -> "#"^string_of_int r^string_of_int g^string_of_int b


 let rec draw_svg s =
  match s with
  | File _ -> failwith "not implemented"
  | Line _ as l -> "<line "^line_to_svg l ^"/>"
  | Rect _ -> failwith "not implemented"
  | Circle _ -> failwith "not implemented"
  | Ellipse _ -> failwith "not implemented"
  | Polyline _ -> failwith "not implemented" 
  | Polygon _ -> failwith "not implemented"

  and line_to_svg l = 
    match l with
    | Line((P2D(x1,y1), P2D(x2,y2), c))-> 
      "x1=\""^string_of_int x1^"\" "^"y1=\""^string_of_int y1^"\""^" "^
      "x2=\""^string_of_int x2^"\" "^"y2=\""^string_of_int y2^"\""^" "^ 
      "stroke=\""^color_to_string c^"\""  
    | _  -> failwith "Cannot make coord with points other than 2D"

let create_svg_file s =
  "<svg version=\"1.1\"
    width=\"300\" height=\"200\"
    xmlns=\"http://www.w3.org/2000/svg\">\n"^
    s^
    "</svg>"
  
