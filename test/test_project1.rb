require 'test/unit'
require 'project1'

class Project1Test < Test::Unit::TestCase
  # def test_get
  #   assert_equal "hello world", Project1.getUser
  # end

  def test_insert
    pr1 = Project1.new
    assert_equal "success inserting user", pr1.insertUser(1,"dummy",10000)
  end

  def test_update
    pr1 = Project1.new
    assert_equal "success updating user", pr1.updateUser(1,"dummies",100000)
  end

  def test_delete
    pr1 = Project1.new
    assert_equal "success deleting user", pr1.deleteUser(1)
  end
end
