aList = 1:5     # => aList = [ 1, 2, 3, 4, 5 ]
// replace list numbers with strings
for x in aList
	switch x
	on 1  x = "one"
	on 2  x = "two"
	on 3  x = "three"
	on 4  x = "four"
	on 5  x = "five"
	off
next
see aList  # print the list items
