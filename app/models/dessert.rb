class Dessert
    attr_reader :name
    attr_accessor :bakery, :calories

    @@all = []

    def initialize(name, bakery, calories)
        @name = name
        @bakery = bakery
        @calories = calories
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


end