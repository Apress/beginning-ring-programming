// Declaring functions
f1 = func { SEE "Hello!" + NL }
f2 = func { SEE "Fine?" + NL }
f3 = f1
// Calling them
call f1()
call f2()
call f3()
// Comparing them
SEE ( f1 = f2 ) + NL    # gives 0 => FALSE : they are different
SEE ( f1 = f3 ) + NL    # gives 1 => TRUE  : they are equal
SEE ( f2 = f3 )         # gives 0 => FALSE : they are different
