 func Main
 {
     cProgram =
     'I want a window and the window title is "hello world"'
     myLanguage(cProgram)
 }

 func myLanguage cCode
     # We add to the code the instructions that change
     # keywords and operators, because eval() uses a new
     # compiler object (the original keywords and operatos)
     cCode = '
          ChangeRingKeyword and _and
          ChangeRingOperator = is
     ' + cCode

 new App
 {
     eval(cCode)
 }

 class App
     # Attributes for the instruction "I want a window"
     I want a window
     nIWantWindow = 0      # => the 1st counter

     # Attributes for the instruction Window title
     # Here we don't define the window attribute again
     title
     nWindowTitle = 0      # => The 2nd counter

     # Keywords to ignore, just nullify them
     a = NULL
     the = NULL
     ChangeRingKeyword and _and
     and = NULL
     ChangeRingKeyword _and and

     # Counting the 1st word in the 1st instruction
     def getI
          if nIWantWindow = 0
          	nIWantWindow++
    	  ok

     # Counting the 2nd word in the 1st instruction
     def getWant
          if nIWantWindow = 1
         	 nIWantWindow++
          ok

     # Executing the first instruction
     # because last word is reached
     def getWindow
          if nIWantWindow = 2     # LAST word reached
          	nIWantWindow= 0
          	SEE "Instruction : I want window" + NL
     	  ok

          # Counting the 2nd word in the 2nd instruction
          # NB: the 1st word (want) has been counted
          if nWindowTitle = 0
         	 nWindowTitle++
          ok

     # Executing the second instruction
     # because last word is reached
     def setTitle cValue
          if nWindowTitle = 1
          	nWindowTitle=0
          	SEE "Instruction : Window Title = " + cValue + NL
	  ok
