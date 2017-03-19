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

# __________________________________________________________

########################makes the database table
# require 'sqlite3'
# db = SQLite3::Database.new("simplify_rads.db") 

# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS simplifying_radical_problems(
#   id INTEGER PRIMARY KEY,
#   problem VARCHAR(255),
#   solution VARCHAR(255),
#   level_of_difficulty = INT
#   )
# SQL

# db.execute(create_table_cmd)
# # __________________________________________________________
# #########populating database

# list_of_problems = ['sqrt(64x^2y)', 'sqrt(40a^3b^7c)', 'sqrt(100)', 'sqrt(42a^2c^18)', 'sqrt(6408p^18q^123r^70)', 'sqrt(25xyz)', 'sqrt(68ab^7c)', 'sqrt(225x^8y)', 'sqrt(20x^7y^8)', 'sqrt(30f^7g^10)', 'sqrt(500s^7t^19)']
# list_of_problems.each do |radical_expression|
#   db.execute("INSERT INTO simplifying_radical_problems (problem, solution, level_of_difficulty) VALUES (?, ?, ?)", [radical_expression, simplify_radical_expression(radical_expression), rate_difficulty(radical_expression)])
# end
# __________________________________________________________
 
#takes in the radical expressions as strings using sqrt() to expression radicals
def has_add_sub_or_div(radical_expression)
  has_add = radical_expression.include?"+"
  has_sub = radical_expression.include?"-"
  has_div = radical_expression.include?"/"
  has_add || has_sub || has_div
end

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

#returns an array the zero index is the number that moves outside of the radical and the first index is the number that stays inside the radical
#for example, sqrt(20) would result in [2, 5] because the simplified form is 2sqrt(5)
def simplify_coefficient_of_radicand(radical_expression)
  radicand = get_the_radicand(radical_expression)
  radicand_coeff = get_the_coefficient(radicand)
  simplified_coefficient = []
  if !is_perfect_square?(radicand_coeff)
    n = radicand_coeff / 2
    until (radicand_coeff % n**2 == 0) 
      n -= 1 
    end 
    simplified_coefficient.push(n)
    simplified_coefficient.push(radicand_coeff/n**2)
  else
    simplified_coefficient.push(Math.sqrt(radicand_coeff).to_i)
    simplified_coefficient.push('')
  end
  simplified_coefficient
end

#this is a hash that maps each variable letter to it's corresponding exponent for ex: x^6yz^3 returns {'x' => 6, 'y' => 1, 'z' => 3}
def separate_variables_with_corresponding_exponents(variable_expression)
  variables_mapped_to_exponents = {}
  variable_expression.chars.each.with_index do |character, index|
    if (is_letter(character)) && (index == variable_expression.length - 1)
      variables_mapped_to_exponents[character] = 1 
    elsif is_letter(character) && (is_letter(variable_expression[index+1]))
      variables_mapped_to_exponents[character] = 1 
    elsif is_letter(character) && (variable_expression[index+1] == '^')
      begin_exponent = index+2
      end_exponent = index+3
      until variable_expression[end_exponent] == nil || is_letter(variable_expression[end_exponent])
        end_exponent += 1
      end
      variables_mapped_to_exponents[character] = variable_expression[begin_exponent...end_exponent].to_i
    end
  end
  variables_mapped_to_exponents 
end


def simplify_variables_in_radicand(radical_expression)
  radicand = get_the_radicand(radical_expression)
  if get_the_variable(radicand) != ''
    radicand_vars = get_the_variable(radicand)
    vars_mapped_to_expons = separate_variables_with_corresponding_exponents(radicand_vars)
    simplified_vars = []
    vars_mapped_to_expons.each do |var, expon|
      if expon.even?
        expon_outside_rad = expon/2
        if expon_outside_rad != 1
        simplified_vars.push(["#{var}^#{expon_outside_rad}", 1])
        else
          simplified_vars.push(["#{var}", 1])
        end
      elsif expon.odd? && expon != 1
        expon_outside_rad = (expon-1)/2
        if expon_outside_rad != 1
        simplified_vars.push(["#{var}^#{expon_outside_rad}","#{var}"])
        else
          simplified_vars.push(["#{var}","#{var}"])
        end
      else
        simplified_vars.push([1, "#{var}"])
      end    
    end
  end
  simplified_vars # is nested array for ex: xy^3z^6 returns [[1, "x"], ["y^1", "y"], ["z^3", 1]]
end

def format_simplified_vars_for_inside_rad_and_outside_rad(simplified_vars)   
  outside_rad_simplified_vars = ''
  inside_rad_simplified_vars = ''
  simplified_vars.each do |outside_rad, inside_rad|
    if outside_rad != 1
      outside_rad_simplified_vars += outside_rad
    end
    if inside_rad != 1
      inside_rad_simplified_vars += inside_rad
    end
  end
  [outside_rad_simplified_vars, inside_rad_simplified_vars]
end

def simplify_radical_expression(radical_expression)
  if has_add_sub_or_div(radical_expression)
    return "Sorry we can't do problems this advanced yet!"
  end
  simplified_vars = simplify_variables_in_radicand(radical_expression)  #this is a nested array
  formatted_simplified_vars = format_simplified_vars_for_inside_rad_and_outside_rad(simplified_vars)
  simplified_coefficient = simplify_coefficient_of_radicand(radical_expression)  #this is an array
  infront_of_rad = "#{simplified_coefficient[0]}#{formatted_simplified_vars[0]}"
  inside_rad = "#{simplified_coefficient[1]}#{formatted_simplified_vars[1]}"
  "#{infront_of_rad}sqrt(#{inside_rad})"
end

#rates the difficulty of the problem 1=easy 2=medium 3=hard
def all_variable_exponents_are_even(radical_expression)
  radicand = get_the_radicand(radical_expression)
  separated_variables_with_expons = separate_variables_with_corresponding_exponents(radicand)
  all_are_even = true
  p separated_variables_with_expons
  separated_variables_with_expons.each do |variable, expon|
    p expon
    if !expon.even?
      all_are_even = false
    end
  end
  all_are_even
end

def rate_difficulty(radical_expression)
  radicand = get_the_radicand(radical_expression)
  coefficient_of_rad = get_the_coefficient(radicand)
  var_of_rad = get_the_variable(radicand)
  is_perf_square_and_has_no_variables = is_perfect_square?(coefficient_of_rad) && var_of_rad == ''
  has_no_coefficient_and_all_exponents_on_vars_are_even = (coefficient_of_rad == 1) && all_variable_exponents_are_even(radical_expression)
  p coefficient_of_rad == 1
  p all_variable_exponents_are_even(radical_expression)
  if is_perf_square_and_has_no_variables || has_no_coefficient_and_all_exponents_on_vars_are_even
    return 1
  elsif coefficient_of_rad <= 225 && var_of_rad.length<=7
    return 2
  else
    return 3
  end
end

# p radicand = get_the_radicand("8xy^2sqrt(20xy^2z)")
# p get_the_coefficient(radicand)
# p get_the_variable(radicand)
# p separate_variables_with_corresponding_exponents("x^7080y^2z^6")
# p simplify_coefficient_of_radicand("8xy^2sqrt(468xy^2z)")
# p simplify_variables_in_radicand("8xy^2sqrt(468xy^3z^6)")
# p simplify_radical_expression("sqrt(64x^10y^4z^21)")
# p all_variable_exponents_are_even("sqrt(y^20z^6)")
p rate_difficulty("sqrt(y^20z^6)")

