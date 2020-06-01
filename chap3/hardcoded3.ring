// Computing months, weeks and days in 3 years – Version 3
// Our constants are organized in a list
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

 	result = 
 	"In " + pNumYears + " years you get " + numMonths +
" months"
 	return result

// Number of weeks in pNumYears
func numWeeks(pNumYears)
 	numWeeks = data[:NB_WEEKS_MONTH] *
 			data[:NB_MONTHS_YEAR] *
 			pNumYears
 	result = 
  	"In " + pNumYears + " years you get " + numWeeks +
" weeks"
 	return result

// Number of days in pNumYears
func numDays(pNumYears)
 	numDays = data[:NB_DAYS_YEAR] * pNumYears
 	result = 
 	"In " + pNumYears + " years you get " + numDays + " days"
 	return result
