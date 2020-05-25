a = 2
SEE "Before : " SEE a + NL
SEE "Inside : " SEE f(a) + NL
SEE "After : " ? a + NL

func f(a)
	a++
	return a
