class Dessert
    attr_reader :name
    attr_accessor :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        Dessert.all << self
    end

    def self.all
        @@all
    end


    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def calories
        calories = 0
        ingredients.each do |ingredient|
            calories += ingredient.calories
        end
        calories
    end


end