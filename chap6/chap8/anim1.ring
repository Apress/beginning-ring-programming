load "gameengine.ring"
func main
      oGame = new Game
      {
            title = "My First Game"
      Sprite
      {
            type = GE_TYPE_PLAYER
            file = "images/player.png" transparent = true
            x = 300 y = 450
            scaled = true width = 100 height = 100
            animate = true
            direction = GE_DIRECTION_DECVERTICAL
            point = 0     # target point
            nStep = 2     # acceleration rate
      }
}
