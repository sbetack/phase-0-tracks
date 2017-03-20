########################makes the database table
require 'sqlite3'
db = SQLite3::Database.new("simplify_rads.db") 

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS simplifying_radical_problems(
  id INTEGER PRIMARY KEY,
  problem VARCHAR(255),
  solution VARCHAR(255),
  level_of_difficulty = INT
  )
SQL

db.execute(create_table_cmd)
# __________________________________________________________


 