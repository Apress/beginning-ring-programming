Guffa {
     budget = 10000
     listOfTgings {
           Thing { name = "couscous" price = 2500 }
           Thing { name = "tomatoes" price = 1500 }
           Thing { name = "onion" price = 1200 }
           Thing { name = "salt" price = 300 }
           getTheTotalPrice()
     }
     canBye = No or Yes # depending on budget > totalPrice
     buy() # depending on the value of canBye
}
