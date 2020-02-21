let rec fizzbuzz i n  =
  if i = (n + 1)
  then []
  else
    if i mod 3 = 0 && i mod 5 = 0
    then "fizzbuzz" :: fizzbuzz (i + 1) n
    else if i mod 3 = 0
    then "fizz" :: fizzbuzz (i + 1) n
    else if i mod 5 = 0
    then "buzz" :: fizzbuzz (i + 1) n
    else "-" :: fizzbuzz (i + 1) n

let y = fizzbuzz 0 15 
