// Computing months, weeks and days in 3 years – Version 5
// Our constants are organized in a list
bVerboseMode = true

data =
[ 
 	:NB_MONTHS_YEAR = 12,
 	:NB_WEEKS_MONTH = 4,
 	:NB_DAYS_WEEK = 7,
 	:NB_DAYS_YEAR = 365
]

// Feel free to ask any question, in any order:
? numDays(3)
? numWeeks(3)
? numMonths(3)

### OUR FUNCTIONS GO HERE ###

// Number of months in pNumYears
func numMonths(pNumYears)
 	numMonths = data[:NB_MONTHS_YEAR] * pNumYears
 	result = output(pNumYears,numMonths,"months")
 	return result

// Number of weeks in pNumYears
func numWeeks(pNumYears)
 	numWeeks = data[:NB_WEEKS_MONTH] *
 			data[:NB_MONTHS_YEAR] *
 			pNumYears
 	result = output(pNumYears,numWeeks,"weeks")
 	return result

// Number of days in pNumYears
func numDays(pNumYears)
 	numDays = data[:NB_DAYS_YEAR] * pNumYears
 	result = output(pNumYears,numDays,"days")
return result

// Generating the output
func output(pNumYears,nResult,unit)
	if bVerboseMode = false
		result = nResult
	else
	 	result = 
	 	"In " + pNumYears + " years you get " + nResult +
		" " + unit
	ok
	return result

