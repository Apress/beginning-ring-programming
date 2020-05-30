load "tracelib.ring"

test1()

func test1
	x = 10
	see :test1 + nl	# Remember :test1 <=> "test1"
	t = 12
	BreakPoint()  # launches the interactive debugger
	see "After breakpoint!" + NL
	see "t = " + t + nl
	see "End of program!" + NL
