class Dessert 

    @@all = []
    attr_accessor :bakery,:name
    def initialize(name,bakery)
        @name = name
        @bakery = bakery 
        Dessert.all << self
    end

    def ingredients 
        Ingredient.all.select{|x| x.dessert == self}
    end

    def calories
        self.ingredients.reduce(0){|sum,ingredient| sum + ingredient.calorie_count}
    end

    def self.all 
        @@all 
    end

end