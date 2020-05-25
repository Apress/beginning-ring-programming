func main
        o1 = New Screen  {
              addPoint() {  # Object accessed by reference
                      x = 100
                      y = 200
                      z = 300
              }
              addPoint() {    # Object accessed by reference
                      x = 50
                      y = 150
                      z = 250
              }
      }
      SEE o1.content[1]
      SEE o1.content[2]

class Screen
      content = []    # hosts a list of objects
      def addPoint
              content + new Point
              return content[Len(content)] # Object returned
                                           # by reference

class Point x=10 y=20 z=30
