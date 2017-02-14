
puts "How many employees are being processed?"
number_of_employees_to_process = gets.chomp
until number_of_employees_to_process == 0
	puts "What is your name?"
	employee_name = gets.chomp
	puts "How old are you?" 
	employee_age = gets.chomp
	puts "What year were you born?"
	employee_birth_year = gets.chomp
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	want_garlic_bread = gets.chomp
	puts "Would you like to enroll in the company health insurance?"
	want_health_insurance = gets.chomp
	allergy = nil
	result = "Results inconclusive."
	until (allergy == "done") || (allergy == "sunshine")
		puts "Name any allergies one at a time please. If there are no more to list, please reply done."
		allergy = gets.chomp
		if allergy == "sunshine"
			result = "Probably a vampire."
	end

	if (employee_age.to_i == Date.today.year - employee_birth_year.to_i)&&((want_garlic_bread=="yes")||(want_health_insurance=="yes"))
		result = "Probably not a vampire"
	if (employee_age.to_i != Date.today.year - employee_birth_year.to_i)&&((want_garlic_bread=="no")||(want_health_insurance=="no"))
		result = "Probably a vampire."	
	if (employee_age.to_i != Date.today.year - employee_birth_year.to_i) && (want_garlic_bread == "no") && (want_health_insurance=="no")
		result = "Almost certainly a vampire."
	if (employee_name == "Drake Cula") || (employee_name == "Tu Fang") 
		result = "Definitely a vampire."
	end

	puts result
	number_of_employees_to_process -= 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."