class Ingredient
  @@all = []
  attr_reader :name
  attr_accessor :calorie_count, :dessert

  def initialize(name, calorie_count, dessert)
    @name = name
    @calorie_count = calorie_count
    @dessert = dessert
    Ingredient.all << self
  end

  def bakery
   self.dessert.bakery
  end

  def self.all
   @@all
  end

  def self.find_all_by_name(ingredient) #inlcude
   Ingredient.all.select { |i| i.name.include?(ingredient) }
  end

end
