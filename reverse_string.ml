let rec reverse_string input: string = 
    if String.length input == 0 
    then ""
    else String.concat "" [reverse_string (String.sub input 1 (String.length input - 1)); String.make 1 input.[0]]