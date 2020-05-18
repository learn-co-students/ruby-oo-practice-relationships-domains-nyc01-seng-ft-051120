class Ingredient

    attr_accessor :name, :dessert

    @@all = []

    def initialize(name, dessert)
        @name = name
        @dessert = dessert
        
        Ingredient.all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        Ingredient.all.select do |ingredient_instance|
            ingredient_instance.name.include? ingredient.to_s
        end
    end 


end
