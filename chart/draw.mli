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

val line : int -> int -> int -> int -> shapes
val draw_svg : shapes -> string
val create_svg_file : string -> string