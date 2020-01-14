require("minitest/autorun")
require("minitest/reporters")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

MiniTest::Reporters.use!
MiniTest::Reporters::SpecReporter.new


class EcosystemTest < MiniTest::Test

  def setup
    @river = River.new("Columbia River")
    @bear = Bear.new("Baloo", "Grizzly")
    @fish = Fish.new("Keith")
  end

def test_roar
  assert_equal("Roar!", @bear.roar)
end

def test_food_count
  assert_equal(0, @bear.food_count)
end

def test_fish_count
  assert_equal(0, @river.fish_count)
end

def test_add_fish_to_river
  assert_equal(1, @river.add_fish_to_river(@fish))
end

def test_remove_fish_from_river
  assert_equal(0, @river.remove_fish_from_river(@fish))
end

def test_add_to_tummy
  assert_equal(1, @bear.add_to_tummy(@fish))
end

def test_remove_fish_from_river
  assert_equal(0, @river.remove_fish_from_river(@fish))
end

def test_fish_from_river_to_tummy
  fish_from_river_to_tummy(@river)
 assert_equal(0, @river.fish_count)
 assert_equal(1, @bear.food_count)
end
end
