type 'a t = 'a Array.t 

let make n x = Array.make n x
let make_zeros n = Array.make n 0.0
let make_ones n = Array.make n 1.0