load "stdlib.ring"

a = [1,2]
? "Before : " ? a
? "Inside : " ? f(value(a))
? "After : " ? a

func f(a)
     return a + 3
