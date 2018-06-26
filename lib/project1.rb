# require 'project1/user'
require 'sqlite3'
require 'pp'

class Project1
	def initialize
		# @user = User.new()
		@db = SQLite3::Database.new 'project1.db'
	end

	def getUser
		data = @db.execute("select * from users")
		pp data
	end

	def insertUser(id,name,balance)
		@db.execute("insert into users values (#{id},'#{name}',#{balance})")
		puts 'success inserting user'
	end

	def updateUser(id,name,balance)
		@db.execute("update users set name=\"#{name}\", balance=#{balance} where id=#{id}")
		puts 'success updating user'
	end

	def deleteUser(id)
		@db.execute("delete from users where id=#{id}")
		puts 'success deleting user'
	end
end

