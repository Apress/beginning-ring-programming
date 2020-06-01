n=0
f()

func f
     ? "Hi!"
     n++
     if n<10 { f() }    # Necessary to avoid infinity!
