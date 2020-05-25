 me = "Mansour"
 you = "Friend"

 show()
 
 p = new person
 ? p.info()

 func show
 	? me
	? you
	them = "Others"
	? them + NL
	y = 20	# y : defined locally in the function.
		# If used here it's ok, but not outside.

 class person
	name = "Mansour"
	age = "43"

	def info
		x = 10	# x : defined locally in the method
		? x	# therefore, Ring can see it.

		? name	# name and age are both globals
		? age	# therefore, Ring can see them.

		? y	# y : wasn't defined anywhere in
			# the method. Therefore, Ring will
			# not see it.
