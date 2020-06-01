load "gameengine.ring"
func main
oGame = new Game
{
      Sprite {
            file = "images/player.png"    scaled = true
            width = 100     height = 100
            x = (screen_w - width) / 2
            y = screen_h - height - 50
            animate = false move = false
            state = func oGame, oSelf { oSelf {
                  if x < 0
                        x = 0
                  but x > (screen_w - width)
                        x = screen_w - width
                  but y < 0
                        y = 0
                  but y > (screen_h - height)
                        y = screen_h - height
                  ok }
            }
            keypress = func oGame, oSelf, nKey { oGame {
            Sprite {
                  file = "images/rocket.png"
                  transparent = true
                  scaled = true width = 30 height = 60
                  oPlayer = oGame.aObjects[1]
                  x = oPlayer.x + (oPlayer.width - width) / 2
                  y = oPlayer.y - (oPlayer.height - height)
                  // Animating the rocket
                  animate = true
                  direction = GE_DIRECTION_DECVERTICAL
                  point = - height
                  nStep = 5
                  state = func oGame, oSelf { oSelf {
                         if y < 0
                               oGame.remove(nIndex)
                         ok }
                         ? len(oGame.aObjects)
                  }
            } # closing brace for Rocket sprite
      } } # closing braces for keypress and oGame
    } # closing brace for Player sprite
} # closing brace for oGame
