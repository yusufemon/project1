require 'sqlite3'

class Project1::User
	def initialize
		@db = SQLite3::Database.new 'project1.db'
	end

	def get
		@db.execute("select * from users")
	end

	def insert(id,name,balance)
		@db.execute("insert into users values (#{id},'#{name}',#{balance})")
		@db.last_insert_row_id
	end

	def update(id,name,balance)
		@db.execute("update users set name=#{name}, balance=#{balance} where id=#{id}")
	end

	def delete(id)
		@db.execute("delete from users where id=#{id}")
	end
end
