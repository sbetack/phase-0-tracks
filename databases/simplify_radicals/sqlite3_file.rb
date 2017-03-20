########################makes the database table

require_relative 'simplify_radicals'
require 'sqlite3'
db = SQLite3::Database.new("simplify_rads.db") 

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS simplifying_radical_problems(
  id INTEGER PRIMARY KEY,
  problem VARCHAR(255),
  solution VARCHAR(255),
  level_of_difficulty INT
  )
SQL

db.execute(create_table_cmd)

list_of_problems = ['sqrt(64x^2y)', 'sqrt(40a^3b^7c)', 'sqrt(100)', 'sqrt(42a^2c^18)', 'sqrt(6408p^18q^123r^70)', 'sqrt(25xyz)', 'sqrt(68ab^7c)', 'sqrt(68ab^7c/(a^3b^7))','sqrt(225x^8y)', 'sqrt(20x^7y^8)', 'sqrt(30f^7g^10)', 'sqrt(500s^7t^19)', 'sqrt(60x^703y^90)', 'sqrt(12f^11g^14h^78j^22k^683)', 'sqrt(5608438x^4)', 'sqrt(56t^44)','sqrt(225x^8y+3x^2y)']

if db.execute("SELECT * FROM 'simplifying_radical_problems'").length == 0
  list_of_problems.each do |radical_expression|
    db.execute("INSERT INTO simplifying_radical_problems (problem, solution, level_of_difficulty) VALUES (?, ?, ?)", [radical_expression, simplify_radical_expression(radical_expression), rate_difficulty(radical_expression)])
  end
end
# __________________________________________________________


 