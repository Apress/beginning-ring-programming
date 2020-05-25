? sayHiBye("Bert","Mariani")

func sayHiBye(firstName, lastName)
      f = func(p1,p2) {         # function inside a function!
           return p1 + " " + p2
      }
      ? "Hi " + call f(firstName,lastName)
      ? "Bye " + call f(firstName,lastName)
