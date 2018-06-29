require 'test/unit'
require 'project1'

class Project1Test < Test::Unit::TestCase

  @@p1 = Project1.new

  def test_get
    assert_not_nil @@p1.getUser, "expected to be not nill"
  end

  def test_insert
    assert_equal true, @@p1.insertUser(99,"dummy",10000), "expected to be true"
  end

  def test_update
    assert_equal true, @@p1.updateUser(99,"dummies",100000), "expected to be true"
  end

  def test_delete
    assert_equal true, @@p1.deleteUser(99), "expected to be true"
  end
end
