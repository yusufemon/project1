require 'test/unit'
require 'project1'

class Project1Test < Test::Unit::TestCase
  # def test_get
  #   assert_equal "hello world", Project1.getUser
  # end

  def test_insert
    assert_equal "success inserting user", Project1.insertUser(1,"dummy",10000)
  end

  def test_update
    assert_equal "success updating user", Project1.updateUser(1,"dummies",100000)
  end

  def test_delete
    assert_equal "success deleting user", Project1.deleteUser(1)
  end
end
