#########check for operations that cannot be completed yet
# check for any + or -
# check for any div
#########get_the_radicand
#  gets the radicand from a radical expression
#########get_the_stuff_infront_of_rad
#  gets the stuff infront of the rad
########get_the_coefficient
#  gets the coefficent from the radicand
########get_the_variable
#  gets the variable part from the radical
########
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
#########simplify_radical
## puts together the result of simplifying the coefficient and simplifying the radical to return the answer

#takes in the radical expressions as strings using sqrt() to expression radicals
def get_the_radicand(radical_expression)
  start_of_sqrt = radical_expression.index('sqrt')
  start_of_radicand = start_of_sqrt + 5
  end_of_radicand = start_of_radicand + 1
  until radical_expression[end_of_radicand] == ')'
    end_of_radicand += 1
  end
  radical_expression[start_of_radicand...end_of_radicand]
end

def is_letter(character)
  (character.ord <= 122) && (character.ord >= 97)
end

def is_constant(term)
  get_the_variable(term) == ''
end

def get_the_variable(radicand)
  radicand.chars.each.with_index do |character, index|
    if is_letter(character)
      return radicand[index..-1]
    end
  end
  return ''
end

def get_the_coefficient(radicand)
  if is_letter(radicand[0])
    return 1
  elsif is_constant(radicand)
    return radicand.to_i
  end
  radicand.chars.each.with_index do |character, index|
    if is_letter(character)
      return radicand[0...index].to_i
    end
  end
end

def is_perfect_square?(number)
  Math.sqrt(number) == Math.sqrt(number).to_i
end

def simplify_coefficient_of_radicand(radical_expression)
  radicand = get_the_radicand(radical_expression)
  radicand_coeff = get_the_coefficient(radicand)
  simplified_coefficient = {}
  p is_perfect_square?(radicand_coeff)
  if !is_perfect_square?(radicand_coeff)
    n = radicand_coeff / 2
    until (radicand_coeff % n**2 == 0) 
      n -= 1 
    end
    simplified_coefficient[n] = radicand_coeff / n**2
  else
    simplified_coefficient[Math.sqrt(radicand_coeff).to_i] = 1
  end
  simplified_coefficient
end
#returns a hash the key is the number that moves outside of the radical and the value is the number that stay inside the radical
#for example, sqrt(20) would result in {2 => 5} because the simplified form is 2sqrt(5)



p radicand = get_the_radicand("8xy^2sqrt(20xy^2z)")
p get_the_coefficient(radicand)
p get_the_variable(radicand)

p simplify_coefficient_of_radicand("8xy^2sqrt(468xy^2z)")




