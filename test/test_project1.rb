require 'test/unit'
require 'project1'

class Project1Test < Test::Unit::TestCase
  # def test_get
  #   assert_equal "hello world", Project1.getUser
  # end

  def test_insert
    p1 = Project1.new
    assert_equal true, p1.insertUser(99,"dummy",10000), "expected to be true"
  end

  def test_update
    p1 = Project1.new
    assert_equal true, p1.updateUser(99,"dummies",100000), "expected to be true"
  end

  def test_delete
    p1 = Project1.new
    assert_equal true, p1.deleteUser(99), "expected to be true"
  end
end
