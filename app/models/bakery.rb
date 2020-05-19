class Bakery 

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name 
        Bakery.all << self 
    end

    def desserts 
        Dessert.all.select{|x| x.bakery == self}
    end

    def ingredients
        self.desserts.map{|x| x.ingredients}.flatten
    end

    def average_calories 
        total_calories = self.desserts.map{|x| x.calories}.reduce{|sum,num| sum + num}
        total_calories.to_f / self.desserts.count
    end

    def shopping_list
        self.ingredients.map{|x| x.name}.join(", ")
    end

    def self.all
        @@all
    end

end