class Bakery
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    Bakery.all << self
  end

 def self.all
  @@all
 end

 def desserts
  Dessert.all.select { |d| d.bakery == self }
 end

 def ingredients
  self.desserts.map { |d| d.ingredients }
 end

 def total_calories
   self.ingredients.map { |i| i[0].calorie_count }.sum
 end

 def average_calories
  self.total_calories / self.desserts.count
 end

 def shopping_list

   self.ingredients.collect do |ingredient|
     ingredient.map { |i| i.name }.join(", ")
   end.join(", ")
  end

end
