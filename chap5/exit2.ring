for x = 1 to 10 # first level loop
	for y = 1 to 10	# Second loop level
		see "x = " + x + " y = " + y + NL
		if x = 3 and y = 5
			exit 2	# Exits from the 2 loops,
				# not only the current one
		ok
	next

next
