Load "gameengine.ring"

func main
oGame = new Game {
 	// BACKGROUND
 	sprite {
 		file= "images/supermancity.jpg"
 		x = 0 y = 0
 		scaled=true width=800 height=600
 		animate = false
 	}
// RANDOMLY-MOVING STAR
 	sprite {
 		file = "images/smstar.png"
 		x = 300 y = 100
		width = 170	height = 167
 		direction = GE_DIRECTION_RANDOM
 		point = 700 nStep = 2
 	}
 	// MOVABLE STAR (BY ARROW KEYS)
 	sprite {
 		file = "images/smstar2.png"
 		x=300 y=450
		width = 170	height = 167
 		animate=false move=true

		state = func oGame, oSelf { oSelf {
		 	oTarget = oGame.aObjects[2]
			// Movable star is inside the vertical corridor
		 	if oTarget.y <= x and x <= oTarget.y + oTarget.width
		 		oGame.shutdown()
		 	ok
		}}

 	}
}
