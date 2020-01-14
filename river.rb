class River

attr_reader :name

def initialize(name)
  @name = name
  @fish_population = []
end

def fish_count
  return @fish_population.length
end

def add_fish_to_river(fish)
  @fish_population.push(fish)
  return @fish_population.length
end

def remove_fish_from_river
  @fish_population.clear
  return @fish_population.length
end

end
