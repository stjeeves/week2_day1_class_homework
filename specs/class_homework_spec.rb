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

  def test_get

end
