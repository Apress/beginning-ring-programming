// Currently the scope is global
// Let's create a first person object using braces
p = new Person {
	// the socpe moves from global to oboject scope
	name = "Said" age = 44 # Object attributes are visible
	? info()	  # The object method is visible
}
// The scope turns back to global again
// Let's create a second one
p = new Person {
	// the socpe moves from global to oboject scope again
	name = "Khaled" age = 45
	? info()
}
// An so on.
// An so on...

Class Person
	Name age
	Def info()
		? "Name : " + name
		? "Age  : " + age
