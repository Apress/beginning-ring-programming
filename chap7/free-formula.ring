SEE "Enter formula:" + NL
GIVE formula         			# The user enters the formula
fStr = "func f(x) return " + formula	# Function constructed
eval(fStr)            			# Function is dynamically executed
? f(0)
