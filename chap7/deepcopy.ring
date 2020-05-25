a = [1,2]
? "Before : " ? a
? "Inside : " ? f(a)
? "After  : " ? a

func f(a)
     aa = a    # aa is a deep copy of a
     aa + 3
     return aa
