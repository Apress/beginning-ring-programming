load "timeinfo.ring"
// Play with timelist()
? timelist()[17] // time
? timelist()[7] // hour_24
? timelist()[8] // hour_12
? timelist()[11] // minutes
? timelist()[13] // seconds
? ""
? timelist()[16] // date
? timelist()[2] // day long
? timelist()[1] // day short
? timelist()[4] // month
? timelist()[19] // year
// Play with timelist() : Expressive
? ""
? timelist() [ ti[:time] ]
? timelist() [ ti[:hour_24] ]
? timelist() [ ti[:hour_12] ]
? timelist() [ ti[:minutes] ]
? timelist() [ ti[:seconds] ]
