require "./lib/todo/list.rb"
require "test/unit"

class TestList < Test::Unit::TestCase

  def test_new
    test = List.new("test_list")
    assert_instance_of(Array, test.list)
  end
  
  def test_add
    test = List.new("test_list")
    test.add_item("Crean")
    assert_equal(1, test.list.length)
    assert_equal("Crean", test.list[0].title)
    assert_instance_of(Task, test.list[0])
    test.add_item("Crean")
    assert_equal(1, test.list.length)
    test.add_item("Do more")
    assert_equal("Do more", test.list[1].title)
  end
  

  def test_delete
    test = List.new("test_list")
    test.add_item("Crean")
    test.add_item("Feed bong")
    assert_equal(2, test.list.length)
    test.delete_item("Crean")
    assert_equal(1, test.list.length)
    test.delete_item("Freak out")
    assert_equal(1, test.list.length)
  end

  def test_update
    test = List.new("test_list")
    test.add_item("Crean")
    test.add_item("Feed bong")
    assert_equal(2, test.list.length)
    assert_equal("Crean", test.list[0].title)
    test.update_item(1, "Crean Harder")
    assert_equal(2, test.list.length)
    assert_equal("Crean Harder", test.list[0].title)
    test.change_status(1)
    assert_equal(true, test.list[0].done)
  end
  
  def test_load
    test = List.new("test_load")
    test.load_list("test_load")
    assert_equal(2, test.list.length)
    assert_equal("Test_load file", test.list[0].title)
    assert_equal("Crean bong", test.list[1].title)
  end
  
  def test_save
    test = List.new("test2")
    test.add_item("Crean")
    test.add_item("Feed bong")
    test.add_item("Moar learn")
    test.save_list("test2")
    test2 = List.new
    test2.load_list("test2")
    assert_equal(3, test.list.length)
    assert_equal("Crean", test.list[0].title)
    assert_equal("Feed bong", test.list[1].title)
    assert_equal("Moar learn", test.list[2].title)
  end
end

