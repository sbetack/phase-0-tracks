#check for numbers/variables infront of the radical
#check for anything after the radical
#check for radical in the denominator??? this may get too complicated for now
#########simplifying the coefficient part of the radicand
#find the coefficient of the radicand
#IF the coefficient is not a perfect square
# set n equal coefficient divided by two 
# UNTIL the coefficient mod n^2 equals 0
#   subtract 1 from n
# end
# return n and coefficient divided by n^2 in a hash maybe? 
#ELSE 
# take the square root of the coefficient
# return 1 and square root of the coefficient (hash)
#########simplifying the variable part of the radicand
#find the variable part of the radicand
#IF the radicand has a variable part
#  get the exponents of each variable
#   loop through the variables and their exponents
#     IF the exponent is even
#       return the variable with it's exponent divided by two and 1
#     ELSIF the exponent is odd and not 1
#        return the the variable with (1 less than it's exponent) divided by two and the variable
#     ELSE
#       return 1 and the variable