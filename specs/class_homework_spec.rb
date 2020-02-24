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

end
