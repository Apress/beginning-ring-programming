// The "Take a Train" Program
isFreeParking = :UNAVAILABLE			
isPaidOccupied = TRUE				

begin()
drive()

 	if isFreeParking = :AVAILABLE
 		parkOnFree()
	else // isFreePArking = :UNAVAILABLE	
		if isPaidOccupied = FALSE		
			parkOnPaid()
		else
			parkOutside()		
		ok				
 	ok

 	goToPlatform()
 	waitForTrain()
 	boardInTrain()
theEnd()

// FUNCTIONS
func begin()
 	? "BEGIN" + NL

func theEnd()
 	? NL + "END"

func drive()
 	? "I'm driving from house to train station." + NL

func parkOnFree()
 	? "I've found a free place in the parking." + NL

func parkOnPaid()
	? "I found a place in a paid parking so I take it!" + NL

func parkOutside()
	? "Unfortunately, I must park away from the station." + NL

func goToPlatform()
 	? "I've parked now. I enter to the platform." + NL

func waitForTrain()
 	? "I'm waiting for train, and looking around :)" + NL

func boardInTrain()
   ? "I'm in Giza, the train took only 7 minutes to come :)" + NL +
     "It's boarding, bye!"
