// Modify a list using for in
aList = "A":"D"         # Same as aList = [ "A","B","C","D" ]
for letter in aList     # Iterating over the list
       letter += "*"    # Changing the current item in the list
next
? aList    # Gives aList = [ "A*","B*","C*","D*" ]
