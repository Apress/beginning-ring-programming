load "gameengine.ring"

func main
oGame = new Game {
 	// BACKGROUND => Object with nIdex = 1
 	sprite {
 		type = GE_TYPE_BACKGROUND
 		file = "images/stars.jpg"
 		scaled = true
 		width = 800 height = 600
 		animate = false
 	}
 	// PLAYER => Objec with nIndex = 2
 	sprite
 	{
 		type = GE_TYPE_PLAYER
 		file = "images/player.png" transparent = true
 		x = 350 y = 450
 		scaled = true width = 100 height = 100
 		animate = false move = true
 	}
// ENEMIES	=> Objects with nIdex = 3, 4, and 5
 	for g = 1 to 3
 	sprite
 	{
 		type = GE_TYPE_ENEMY
 		file = "images/enemy.png" transparent = true
 		x = 120 + g*100 y = 80
 		scaled = true width = 80 height = 80
 		animate = false
 	}
next g
}
