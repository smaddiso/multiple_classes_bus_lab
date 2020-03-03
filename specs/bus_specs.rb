require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus")
require_relative("../person")

class TestBus < MiniTest::Test

  def setup()
    @bus = Bus.new(42, "Raigmore Hospital", [])
  end

  def test_bus_has_number()
    assert_equal(42, @bus.number)
  end

  def test_bus_has_destination()
    assert_equal("Raigmore Hospital", @bus.destination)
  end

  def test_number_of_passengers()
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_pick_up_passenger()
    new_passenger = Person.new("Stella", 72)
    @bus.add_passenger(new_passenger)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_drop_off_passenger()
    old_passenger = Person.new("Stella", 72)
    @bus.remove_passenger(old_passenger)
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_empty_bus()
    @bus.empty()
    assert_equal(0, @bus.number_of_passengers())
  end

end
