// Declaring the time info (ti[]) list

ti = [
// Time info
:time = 17,
:hour_24 = 7,
:hour_12 = 8,
:minutes = 11,
:seconds = 13,

// Date info
:date = 16,
:day_long = 2,
:day_short = 1,
:month = 4,
:year = 19
]

// Hiding the complexity of timelist()
// inside an expressive timeinfo()
func timeInfo(item)
	return timelist()[ ti[item] ]
