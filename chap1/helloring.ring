load "timeinfo.ring"

// What is the current date?
? date()

// What is the date tomorrow?
? addDays( date(),1 )

// What is the date in a century?
n = 365 * 100
? addDays( date(),n )

// What time is it now?
? time()

// More questions
? ""
? timeInfo(:time)
? timeInfo(:hour_24)
? timeInfo(:hour_12)
? timeInfo(:minutes)
? timeInfo(:seconds)
? timeInfo(:date)
? timeInfo(:day_long)
? timeInfo(:day_short)
? timeInfo(:month)
? timeInfo(:year)
