#########populating database
list_of_problems = ['sqrt(64x^2y)', 'sqrt(40a^3b^7c)', 'sqrt(100)', 'sqrt(42a^2c^18)', 'sqrt(6408p^18q^123r^70)', 'sqrt(25xyz)', 'sqrt(68ab^7c)', 'sqrt(225x^8y)', 'sqrt(20x^7y^8)', 'sqrt(30f^7g^10)', 'sqrt(500s^7t^19)']
list_of_problems.each do |radical_expression|
  db.execute("INSERT INTO simplifying_radical_problems (problem, solution, level_of_difficulty) VALUES (?, ?, ?)", [radical_expression, simplify_radical_expression(radical_expression), rate_difficulty(radical_expression)])
end
# __________________________________________________________