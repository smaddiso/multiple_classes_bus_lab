require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus")

class TestBus < MiniTest::Test

  def setup()
    @bus = Bus.new(42, "Raigmore Hospital")
  end

  def test_bus_has_number()
    assert_equal(42, @bus.number)
  end

  def test_bus_has_destination()
    assert_equal("Raigmore Hospital", @bus.destination)
  end


















end
