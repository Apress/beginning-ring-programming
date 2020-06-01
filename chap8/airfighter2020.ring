load "globals.ring"
load "gameengine.ring"
func main
oGame = new Game {
    title = "Stars Fighter"
    FPS = 60
    FixedFPS = 60
    play(oGame)
}

func init(oGame)
      oGame {
            nSession++

            if nSession > 3 {
                   nLevel++     //if nLevel > 3 { gameOver(oGame) }
                   nSession = 1
            }

            switch nLevel
            on 1
                   nEnemies = 3
                   nVelocity = 5
                   nStars = 3
            on 2
                   nEnemies = 5
                   nVelocity = 10
                   nStars = 5
            on 3
                   nEnemies = 7
                   nVelocity = 15
                   nStars = 8
            off

            nScore = 0
            nEnergy = 100
            nMaxScore = 100
            nScorePoint = nMaxScore / nEnemies
            bCanFight = True
            bCeasefire = False
      }

func play(oGame)
      oGame { init(oGame) // load the globals first
      // Start designing the world
      // BACKGROUND
      Sprite
      {
             type = GE_TYPE_BACKGROUND
             file = "images/stars.jpg"
             x = -300     y = -200
             animate = false
             state  = stayin_f()
      }
      // PLAYER
      Sprite
      {
             type = GE_TYPE_PLAYER
             file = "images/player.png"    transparent = true
             x = 350    y = 450
             scaled = true    width = 100    height = 100
             animate = false  move = true
             keypress = attackEnemy_f()    # emits rocket
      }
      // ENEMIES
      for g = 1 to nEnemies
      Sprite
      {
             type = GE_TYPE_ENEMY
             file = "images/enemy.png"    transparent = true
             x = 120 + random(100)*g + g*10    y = 80
             scaled = true    width = 80    height = 80
             animate = true
             direction = GE_DIRECTION_RANDOM
             state = attackPlayer_f()    # launches random
                                                # rockets on the player
      }
      next g
      // LEVEL
      Text { type = GE_TYPE_LEVEL
             text = "LEVEL " + nLevel + " : " + nSession
             animate = false
             size = 24
             file = "fonts/pirulen.ttf"
             x = 20       y = 20
             color = rgb(255,255,255)
      }
      // SCORE
      Text { type = GE_TYPE_SCORE
             text = "00"
             animate = false
             size = 60
             file = "fonts/pirulen.ttf"
             x = 650        y = 20
             color = rgb(255,192,0)
      }
      // ENERGY
      Text { type = GE_TYPE_ENERGY
             text = "100"
             animate = false
             size = 40
             file = "fonts/pirulen.ttf"
             x = 670        y = 520
             color = rgb(60,255,255)
      }
      // SOUND
      Sound { file = "sound/music2.wav" }
 }

func stayin_f()    # No one is allowed to leave the world!
      f = func oGame,oSelf {
      oGame {
            for obj in aObjects
                  if  obj.x <= 0
                        obj.x = 0
                  but obj.x >= screen_w - obj.width
                        obj.x = screen_w - obj.width
                  but obj.y <= 0
                      obj.y = 0
                      // When rockets exceed from the top,
                       // remove them
                      if classname(obj)="sprite" and
                         obj.type=GE_TYPE_FIRE
                              remove(obj.nIndex)
                         ok
                  but obj.y + obj.height >= screen_h
                      obj.y = screen_h - obj.height
                      // When rockets exceed from the bottom,
                      // remove them
                        if classname(obj)="sprite" and
                           obj.type=GE_TYPE_FIRE
                              remove(obj.nIndex)
                        ok
                  end
            end
      }}
      return f



func attackEnemy_f()      // WE ARE INSIDE THE PLAYER'S SCOPE
      f = func oGame,oself,nkey {
        if nkey = key_space and bCanFight = True
            // ROCKET LAUNCHED
            updateEnergy(oGame,-5)
            oGame {
                  Sprite
                  {
                  type = GE_TYPE_FIRE
                  file  = "images/rocket.png"
                  transparent = true
                  x = oself.x + 30      y = oself.y - 30
                  width = 30      height = 30
                  point = -30      nstep = 20
                  direction = ge_direction_decvertical
                  state = destroythem_f()
                  }
                  } # oGame region is closed here
                but nkey = key_esc
                   oGame.shutdown()
                ok
             }  # the f function region is closed here
      return f  # the f function is returned to the caller


func attackPlayer_f()      # WE ARE INSIDE THE ENEMEY STATE
      f = func oGame, oSelf {
      // LAUNCH ROCKETS RANDOMLY FROM ENEMEY STATE
      if random(1000/nVelocity) = 1 and bCeasefire = False
            oGame
            {
                  Sprite
                  {
                  type = GE_TYPE_FIRE
                  file  = "images/rocket2.png"
                  transparent = true
                  x = oself.x + 30
                  y = oself.y + oself.height+ 30
                  width = 30
                  height = 30
                  point = ogame.screen_h+30
                  nstep = 5
                  direction = GE_DIRECTION_incVERTICAL
                  state = theygotme_f()      // INSIDE ROCKET STATE
                  }   # the Sprite region is closed here
            }   # the oGame region is closed here
        ok   # the if region is closed here
      }   # the f function region is closed here
      return f   # the f function is returned to the caller

func theygotme_f()      // INSIDE ENEMY'S ROCKET STATE
      f = func oGame,oSelf {
            // The player index = 2
            oPlayer =  oGame.aObjects[2]
            oRocket = oSelf
            // Detect collision
          if oPlayer.x <= oRocket.x and
               oRocket.x <= oPlayer.x + oPlayer.width and
               (oPlayer.y <= oRocket.y and
               oRocket.y <= oPlayer.y + oPlayer.height)
                  oGame.remove(oRocket.nIndex)
                  showfire(oGame,oRocket.x,oRocket.y)
                  updateEnergy(oGame,-5)
                  if nEnergy = 0
                        oGame.remove(oPlayer.nIndex)
                        bCeasefire = True
                  ok
                ok
        }
      return f

func destroythem_f()      # WE ARE INSIDE THE PLAYER'S STATE!
      f = func oGame,oSelf {
      for obj in oGame.aObjects
            if classname(obj)="sprite" and
               obj.type = GE_TYPE_ENEMY
                  if oself.x >= obj.x and oself.y >= obj.y and
                     oself.x <= obj.x + obj.width and
                     oself.y <= obj.y + obj.height
                        updateScore(oGame,nScorePoint)
                        // EXPLOSION
                        showfire(oGame,obj.x+40,obj.y+40)
                        // REMOVE enemy FROM OBJECT POOL
                        oGame.remove(obj.nindex)
                        exit
                ok
            ok
      next
      }
      return f

func showfire(oGame,pnX,pnY) # WE JUST NEED THE POSITION
      oGame {
            Animate
            {
            file = "images/fire.png"      transparent = true
            x = pnX                       y = pnY
            framewidth = 39.38            height = 40
            state = func oGame, oSelf {
            oSelf {
                  if frame < 13
                        frame++
                  else
                        frame = 1
                        oGame.remove(oSelf.nIndex)
                  ok
            }} # end of state
            } # end of animate
      }

func updateEnergy(oGame,n)
      nEnergy += n
      if nEnergy = 0
            gameOver(oGame)
      but nEnergy <= 0
            nEnergy = 0 bCeaseFire = True
      but nEnergy = 30
            bCanFight = False
            r = random(nStars)      if r=0 { r=1 }
            addBonus(oGame,r)
      but nEnergy > 30
            bCanFight = True
      but nEnergy > 100
            nEnergy = 100
      ok
      for i=1 to len(oGame.aObjects)
            if oGame.aObjects[i].type = GE_TYPE_ENERGY
                  oGame.aObjects[i].text = "" + nEnergy
                  exit
            end
      end

func addBonus(oGame,n)
      oGame {
      for g=1 to n
      Sprite {
            type = GE_TYPE_BONUS
            file = "images/smstar.png" transparent=true
            x=300      y=200
            scaled=true width=50 height=50
            point=800 nStep=3 direction = GE_DIRECTION_RANDOM
            state = bonusCaptured_f()
      }   # end of Sprite region
      next g
      }   # end of oGame region

func BonusCaptured_f()
      // INSIDE STARS'S STATE
      f = func oGame, oSelf {
      oGame {
            oStar = oSelf
            oPlayer = aObjects[2]
            if oPlayer.x <= oStar.x and
               oStar.x <= oPlayer.x + oPlayer.width and
               (oPlayer.y <= oStar.y and
               oStar.y <= oPlayer.y + oPlayer.height)
                        harvestBonus(oGame,oStar)
                        oGame.remove(oStar.nIndex)
                        upDateEnergy(oGame,20)
            ok   # end of if region
      }    # end of oGame region
      }   # end of f function region
      return f


func harvestBonus(oGame,oStar)      # oStar is harvested!
      oGame {
            Sprite {
                  file = "images/smstar2.png"      transparent=true
                  x = oStar.x      y=oStar.y
                  scaled = true
                  width=oStar.width
                  height=oStar.height
                  point=800
                  direction=GE_DIRECTION_INC      nStep = 15
            }
      }


func updateScore(oGame,n)      # INSIDE PLAYER STATE
      oGame {
            nScore += n
            if nScore = nMaxScore { gameOver(oGame) }
            	for obj in aObjects
                  if classname(obj)="text" and
                   obj.type = GE_TYPE_SCORE
                        s = 0 + obj.text
                        s += n
                        obj.text = "" + ceil(s)
                        exit
                  end    # end if if region
            end   # end of for region
      }   # end of oGame region


func replayOrQuit_f()
      f = func oGame, OSelf, nKey {
            if nKey = KEY_ESC
                   oGame.shutdown()
            but nkey = KEY_SPACE
                   oGame.refresh()
                   replay(oGame)
            ok
      }
      return f


func replay(oGame)
      nScore = 0
      nEnergy = 100
      play(oGame)


func gameOver(oGame)
      oGame {
            oGame.refresh()
            // BACKGROUND
            Sprite
            {
                  type = GE_TYPE_BACKGROUND
                  file = "images/stars.jpg"
                  x = -300      y = -200
                  animate = false
            }

            Text
            {
            text = "NEXT LEVEL?"
            size = 70      color = rgb(0,0,0)
            file = "fonts/pirulen.ttf"
            x = 65      y = 255
            animate = false
            }

            Text
	    {
            text = "NEXT LEVEL?"
            animate = true
            size = 70      color = rgb(255,255,255)
            file = "fonts/pirulen.ttf"
            x = 60      y = 250
            animate = false
            keypress = replayOrQuit_f()
            }
      }
