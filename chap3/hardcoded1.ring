// Computing months, weeks and days in 3 years – Version 1
NB_MONTHS_YEAR = 12 	# Number of months per year 
NB_WEEKS_MONTH = 4 	# Number of weeks per month
NB_DAYS_WEEK = 7 	# Number of days per week
NB_DAYS_YEAR = 365 	# Number of days per year

// Number of months in 3 years
numMonths_3Y = NB_MONTHS_YEAR * 3 	# Gives 36 months

? "In " + 3 + " years you get:"
? " "+ numMonths_3Y + " months"

// Number of weeks in 3 years
numWeeks_3Y = NB_WEEKS_MONTH * numMonths_3Y  # Gives 144 weeks
? " "+ numWeeks_3Y + " weeks"

// Number of days in 3 years
numDays_3Y = numWeeks_3Y * NB_DAYS_WEEK    # Gives 1008 days
? " "+ numDays_3Y + " days"


