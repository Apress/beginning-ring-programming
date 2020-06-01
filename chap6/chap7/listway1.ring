// Declaring the main list
aPerson =
[
    :name = "Shidong",
    :job = "CEO",
    :age = 54,

    :info = func {
         ? "Name : " + aPerson[:name]
         ? "Job : " + aPerson[:job]
         ? "Age : " + aPerson[:age]
         // These are new lines added
         ? ""
         ? "Customer ID        : " + aPerson[5][:customerID]
         ? "Bank account       : " + aPerson[5][:bankAccount]
         ? "Address            : " + aPerson[5][:address]
    }
]

// Declaring the banking list
aCustomer =
[
    :customerID = "C12500",
    :bankAccount = "XA12500",
    :address = "20, Peace Avenue. Toronto."
]

// Adding the two lists
aPerson + aCustomer

// Calling the autonomous function defined in aPerson[]
f = aPerson[:info]
call f()
