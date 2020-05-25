Load "gameengine.ring"
func main
      oGame = new Game {
            Animate
            {
                   file = "images/fire.png" transparent = true
                   x = 50 y = 50
                   framewidth = 39.38 height = 42
                   state = func oGame, oSelf {
                         oSelf {
                         if frame < 13
                                frame++
                         else
                                frame = 1
                                oGame.remove(oSelf.nIndex)
                         ok
                   }} # end of oSelf and state
            } # end of animate
}
