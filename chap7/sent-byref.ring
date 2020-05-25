o1 = new Point { X = 10 Y = 10 }
? o1
? move(o1,5,5)     # o1 is sent by reference
? o1

func move(po, px,py)
         po.X += px
         po.Y += py
         return po

class Point X Y
