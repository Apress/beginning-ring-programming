nEnergy = 99
nScore = 0

load "gameengine.ring"

func main
GE_FULLSCREEN = TRUE
oGame = new Game {
 	// SCORE	=> nIndex = 1
 	text {
 		text = "00" size = 100
 		file = "fonts/pirulen.ttf"
 		x = 30 y = 20
 		color = GE_COLOR_BLACK
 		animate = false
 	}

 	// ENERGY	=> nIndex = 2
 	text {
 		text = "99" size = 100
 		file = "fonts/pirulen.ttf"
 		x = 570 y = 20
 		color = GE_COLOR_BLUE
 		animate = false
 	}

 	// PLAYER	=> nIndex = 3
 	sprite
 	{
 		type = GE_TYPE_PLAYER
 		file = "images/player.png" transparent = true
 		x = 350 y = 450
 		scaled = true width = 100 height = 100
 		animate = false move = true

		state = func oGame,oSelf { oSelf {
 			if nEnergy>0 { nEnergy-- }
 			oGame.aObjects[2].text = "" + nEnergy
 			if nEnergy=0 { nEnergy=0 }
 		}}

 	}

}
