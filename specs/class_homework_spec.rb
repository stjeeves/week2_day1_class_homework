require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_homework')
require 'pry'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFestival < MiniTest::Test

  def setup()
    @festival = Festival.new("Sziget", "Budapest", 250, ["Calvin Harris",
      "Caribou", "Lewis Capaldi" ])
  end

  def test_get_name()
    assert_equal("Sziget", @festival.get_name())
  end

  def test_get_location()
    assert_equal("Budapest", @festival.get_location())
  end

  def test_get_ticket_price()
    assert_equal(250, @festival.get_ticket_price())
  end

  def test_get_acts()
    assert_equal(["Calvin Harris",
      "Caribou", "Lewis Capaldi" ], @festival.get_acts())
  end

  def test_set_name()
    @festival.set_name("Steve-Fest")
    assert_equal("Steve-Fest", @festival.get_name())
  end

  def test_set_location()
    @festival.set_location("Edinburgh")
    assert_equal("Edinburgh", @festival.get_location())
  end

  def test_set_ticket_price()
    @festival.set_ticket_price(200)
    assert_equal(200, @festival.get_ticket_price())
  end

  def test_add_new_acts()
    @festival.add_new_acts("Bonobo")
    assert_equal(["Calvin Harris",
      "Caribou", "Lewis Capaldi", "Bonobo"], @festival.get_acts())
  end

  def test_check_acts()
    assert_equal(true, @festival.check_acts("Calvin Harris"))
  end

  def test_total_acts()
    assert_equal(3, @festival.total_acts())
  end

  def test_remove_acts()
    @festival.remove_acts(0)
    assert_equal(["Caribou", "Lewis Capaldi"], @festival.remove_acts(0))

  end

  def test_increase_ticket_price()
    @festival.increase_ticket_price(50)
    assert_equal(300, @festival.increase_ticket_price(50))
  end

end
