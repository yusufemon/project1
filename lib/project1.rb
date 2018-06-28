require 'sqlite3'
require 'logger'

class Project1
	# Class for CRUD user
  def initialize
    @db = SQLite3::Database.new 'project1.db'
    @logger = Logger.new(STDOUT)
    @logger.info("Project1 initialize")
  end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.getUser
  #   => print all user in database
  # Arguments:
  #   none

	def getUser
		data = @db.execute("select * from users")
    @logger.info(data)
    data
	end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.insertUser(id,name,balance)
  #   => print all user in database
  # Arguments:
  #   id: (integer)
  #   name: (String)	
  #   balance: (integer)

	def insertUser(id,name,balance)
		@db.execute("insert into users values (#{id},'#{name}',#{balance})")
		@logger.info("success inserting user")
	end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.getUser
  #   => print all user in database
  # Arguments:
  #   id: (integer)
  #   name: (String)
  #   balance: (integer)

	def updateUser(id,name,balance)
		@db.execute("update users set name=\"#{name}\", balance=#{balance} where id=#{id}")
		@logger.info("success updating user")
	end

	# Example:
  # 	>> pr1 = Project1.new
  #   >> pr1.getUser
  #   => print all user in database
  # Arguments:
  #   id: (integer)

	def deleteUser(id)
		@db.execute("delete from users where id=#{id}")
		@logger.info("success deleting user")
	end
end

