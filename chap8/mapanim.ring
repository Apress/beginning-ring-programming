load "gameengine.ring"

func main
oGame = new Game
{
 	map {
 	blockwidth = 80
 	blockheight = 75
	// NB : the map has been extended to 16 by 8 blcoks
 	aMap = [
 		[ 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1 ],
 		[ 0, 0, 0, 0, 1, 0, 3, 0, 1, 0, 0, 1, 3, 0, 0, 1 ],
 		[ 0, 0, 2, 0, 1, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 3 ],
 		[ 0, 0, 1, 0, 3, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0 ],
 		[ 2, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 2, 1, 0, 0, 0 ],
 		[ 1, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 1, 3, 0, 0, 2 ],
 		[ 1, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 3, 0, 0, 0, 1 ],
 		[ 1, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 1 ]
 	]

 	aImages = [
 		"images/fbwall.png",     # Represented by 1 in aMap
 		"images/fbwallup.png",   # Represented by 2 in aMap
 		"images/fbwalldown.png"  # Represented by 3 in aMap
 	]
	// Animation happens here
 	state = func oGame,oSelf {
 		oSelf {
 			x -= 3
 			if x < - 2100 x = 0 ok
 		}
 	}
 	}

}
