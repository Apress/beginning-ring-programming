load "gameengine.ring"

func main
 	oGame = new Game
 	{
 		map {
 			blockwidth = screen_w / 10
 			blockheight = screen_h / 8

 			aMap = [
 				[ 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 ],
 				[ 0, 0, 0, 0, 1, 0, 3, 0, 1, 0 ],
 				[ 0, 0, 2, 0, 1, 0, 0, 0, 1, 0 ],
 				[ 0, 0, 1, 0, 3, 0, 0, 0, 1, 0 ],
 				[ 2, 0, 1, 0, 0, 0, 0, 0, 3, 0 ],
 				[ 1, 0, 1, 0, 0, 0, 2, 0, 0, 0 ],
 				[ 1, 0, 1, 0, 2, 0, 1, 0, 2, 0 ],
 				[ 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 ]
 			]
 			aImages = [
 			"images/fbwall.png",
 			"images/fbwallup.png",
 			"images/fbwalldown.png"
 			]

 		}
}
