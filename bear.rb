class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @tummy = []
  end

  def food_count
    return @tummy.length
  end

def add_to_tummy(fish)
   @tummy.push(fish)
   return @tummy.length
 end

def add_from_river
  for fish in @river.fish_population
    add_to_tummy(fish)
  end
  fish.remove_fish_from_river
end

def roar
  return "Roar!"
end

def fish_from_river_to_tummy(river)
  for fish in river.fish_population
    add_to_tummy(fish)
  end
  river.remove_fish_from_river
end

end
