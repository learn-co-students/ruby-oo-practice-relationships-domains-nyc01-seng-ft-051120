class Ingredient

    attr_reader :name, :calories, :dessert

    @@all = []

    def initialize(name, calories, dessert)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        @dessert
    end

    def bakery
        dessert.bakery
    end

    def name
        @name
    end

    def self.find_all_by_name(ingredient)
        Ingredient.all.select do |ingredient_instance|
            ingredient_instance.name.include? ingredient.to_s
        end
    end


end
