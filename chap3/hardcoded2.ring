// Computing months, weeks and days in some years – Version 2
numYears = 3

NB_MONTHS_YEAR = 12 	# Number of months per year
NB_WEEKS_MONTH = 4 	# Number of weeks per month
NB_DAYS_WEEK = 7 	# Number of days per week
NB_DAYS_YEAR = 365 	# Number of days per year

// Number of months in a given number of years (numYears)
? "In " + numYears + " years you get:"
numMonths = NB_MONTHS_YEAR * numYears		# Gives 36 months
? " "+ numMonths + " months"

// Number of weeks in a given number of years (numYears)
numWeeks = NB_WEEKS_MONTH * numMonths 		# Gives 144 weeks
? " "+ numWeeks + " weeks"

// Number of days in a given number of years (numYears)
numDays= numWeeks * NB_DAYS_WEEK 		# Gives 1008 days
? " " + numDays + " days"



