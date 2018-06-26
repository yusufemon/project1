# require 'project1/user'
require 'sqlite3'
require 'pp'

class Project1
	# Class for CRUD user
  @@db = SQLite3::Database.new 'project1.db'

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.getUser
  #   => print all user in database
  # Arguments:
  #   none

	def self.getUser
		data = @@db.execute("select * from users")
		pp data
	end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.insertUser(id,name,balance)
  #   => print all user in database
  # Arguments:
  #   id: (integer)
  #   name: (String)	
  #   balance: (integer)

	def self.insertUser(id,name,balance)
		@@db.execute("insert into users values (#{id},'#{name}',#{balance})")
		puts 'success inserting user'
	end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.getUser
  #   => print all user in database
  # Arguments:
  #   id: (integer)
  #   name: (String)
  #   balance: (integer)

	def self.updateUser(id,name,balance)
		@@db.execute("update users set name=\"#{name}\", balance=#{balance} where id=#{id}")
		puts 'success updating user'
	end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.getUser
  #   => print all user in database
  # Arguments:
  #   id: (integer)

	def self.deleteUser(id)
		@@db.execute("delete from users where id=#{id}")
		puts 'success deleting user'
	end
end

