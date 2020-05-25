func main()
     times(8,:f)     # The function f() is sent as an input
                     # to the times() function
func f()
     see random(1)   # generates a random digit (0 or 1)

func times(pn, pf)   # pf parameter contains the f() function
     for i = 1 to pn
           call pf() # f() is called using the value of pf
     next i
