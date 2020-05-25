aPerson =
[
	// The following replace attributes
	:name = "Majdi",
	:job = "doctor",
	:age = 42,

	// The following rempaces methods
	:info = func {
		? "Name : " + :name
		? "Job : " + :job
		? "Age : " + :age
	}
]
// showing the person info
f = aPerson[:info]
call f()
