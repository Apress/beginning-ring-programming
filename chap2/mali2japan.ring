// Exchanging Malian XOF to Japaneese JPY
exchangerate = "1XOF=5.185496JPY"
er = onlyNumbers(exchangerate) // Returns “5.185496”
// Conversion now should work
exchangerate = number(exchangerate)
// Finally, we’re done
amount = 1000 * er
? amount

// Defining a temporary version of onlyNumbers()
func onlyNumbers(str)
	return "5.185496"
