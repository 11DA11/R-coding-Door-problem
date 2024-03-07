#------------------------------------------- 5. Door problem, math problem -------------------------------------------------------------- 


# Cant use packages
# Initial thought was to just make a code that checks if the number from 1-930 is a perfect square. From then we could just pick the first 30 numbers
# which tell us which first 30 doors are closed, because after all individuals pass through all the doors the doors that remain open are those 
# whose numbers are perfect squares. 

# Will be using logical to define all doors to be FALSE, indicating all doors are closed at the beginning.
 
# The problem is set up so that you can alter the number of doors and induviduals that enter them by changing the 930 to whateven you like


X <- function(Ndoors, individuals = Ndoors){      # Defining the number of doors and individuals going through the corridor.
  Fdoors <- logical(Ndoors)           # We have to make one more vector that sets all our doors to FALSE (means that the door is closed) 
  for (ii in seq(individuals)){       # creating a loop from ii which is the individuals variable in the vector, starting from induvidual 1.
    state <- seq(ii, Ndoors, ii)       # Make a new vector that tells us state of each door that will then be changed by the each induvidual from 1-930    
  Fdoors[state] <- !Fdoors[state]       # Here we then make a response to a person entering the hallway, but only if they interact with the door we change the state of the door with !.   
  }
  return(Fdoors)
}              # chosing the first 30 doors that are set to closed (FALSE)

# Setting the number of doors and individuals to 930. Possible to change the number to see that no matter how many people go through it wont change the first numbers.
Y <- X(930)                   # We have now made a vector which should tell us in which state each door is, after all the induviduals have gone through the corridor. Change the number changes how many doors and how many people enter the corridor
CD <- which(!Y)[1:30]         # Choosing the doors in the opposite state, AKA the closed state (FALSE) in the X vector.

cat("The first 30 closed doors are", CD)   # Finally display the first 30 doors that are in a closed state.

# Double check if any of those numbers are a perfect squares to see that they are not open.
check_door <- sqrt(CD) %% 1 == 0     # We set it up so that if the SQRT of the number being checked is an integer the number of the door is a perfect square and thus open and not closed.

print(check_door) # We see that it only reports FALSE so we know that non of the door numbers is a perfect square and thus is not open.


check_door <- sqrt(CD) %% 1 == 0
print(check_door)









