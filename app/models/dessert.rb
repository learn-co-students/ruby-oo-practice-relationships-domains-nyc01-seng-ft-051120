class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def bakery
        @bakery
    end

    def calories
        ingredients.reduce(0) do |sum, ingredient|
            sum + ingredient.calories
        end
    end

    def ingredients_names
        ingredients.map do |ingredient|
            ingredient.name
        end
    end

end