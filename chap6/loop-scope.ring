x = 10
? "x starts global, and x = " + x

? "Inside the function, a local x iterates 5 times:"
f()
? ""

? "After the function, x is global again, and x = " + x

func f
	for x = 1 to 5	# x is local to the function
		? x
	next x
	? "After the loop, inside the function, x = " + x
