isTired = FALSE
begin()
	warmup()
	n = 1
	do 
		lift()
		rest()
		? ""
		if n = 3 { isTired = TRUE }
		n++
	again isTired = FALSE


theend()

// FUNCTIONS

func begin()
	? "BEGIN" + NL

func warmup()
	? "I'm warming up..." + NL

func tired()
	? "Now, I'm tired!" + NL

func lift()
	? "I lift the weight."

func rest()
	? "I take a rest."

func theend()
	? "END"
