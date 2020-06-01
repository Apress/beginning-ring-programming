isTired = FALSE
begin()
	warmup()
	n = 0
	while isTired = FALSE
		lift()
		rest()
		? ""
		n++
		if n = 3 { isTired = TRUE } // Provokes the loop to stop
	end

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
