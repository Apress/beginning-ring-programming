 # Natural Code
 new Natural {
     Add 3 numbers together
 }

 # Natural Code Implementation
 class Natural
      value
      # Keywords
      add=0 numbers=0 together=0
      # Execution
      def braceExprEval n     # => n is 2 in our case as
                              #    provided by us in the natural
                              #    sentence above
            value = n

      def getNumbers
           nSum = 0
           for i=1 to value
                ? "Enter number " + i + " : " GIVE n
                nSum += n
           next
           ? "Sum : " + nSum
