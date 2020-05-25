See "
Main Menu
---------
(1) Say Hello
(2) About
(3) Exit
"
Give nOption      # Recieves a value from the keyboard

Switch nOption
On 1    See "Enter your name : "
	// *** Please note this line contains an error (12 before name) in the book
	Give name See "Hello " + name + NL  
On 2 	See "Sample : using switch statement" + NL
On 3 	See "Bye!"
Other	See "Bad option..." + NL
Off
