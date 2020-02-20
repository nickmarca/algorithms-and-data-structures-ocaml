let chunks1 (i, t) =
  match i with
  | [] -> (i, t)
  | h :: r -> (r, h :: t)


let rec chunksP (i, t, s) =
  if List.length t = s || List.length i = 0
  then (i, t)
  else
    let (i0, t0) = chunks1(i, t) in
    chunksP(i0, t0, s);;


let rec chunks (i, t, s) =
  if List.length i = 0
  then t
  else
    let (i0, t0) = chunksP(i, [], s) in
    if List.length t = 0
    then chunks(i0, [t0], s)
    else chunks(i0, t0 :: t, s)

let t = chunks([1;2;3;4;], [], 3);;
    

