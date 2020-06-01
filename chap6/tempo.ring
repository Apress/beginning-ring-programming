x = 10
? "x starts global at x = " + x + NL

? "Inside the function, a local x (different from the first one) iterates 5 times:"
countTo()
? ""

? "After the function, the global x remains at x = " + x

func countTo
   for x = 1 to 5	# x is local to the function
	? x
   next x
   ? "After the loop, inside the function, the local x = " + x

