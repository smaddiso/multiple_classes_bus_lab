require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../person")

class TestPerson < MiniTest::Test

  def setup()
    @person = Person.new("Stella", 72)
  end

  def test_person_has_name()
    assert_equal("Stella", @person.name)
  end

  def test_person_has_age()
    assert_equal(72, @person.age)
  end




















end
