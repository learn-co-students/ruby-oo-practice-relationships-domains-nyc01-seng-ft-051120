class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Bakery.all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def average_calories
        total_calories = 0
            desserts.each do |dessert|
                total_calories += dessert.calories
            end
        average_calories = total_calories / desserts.count
        average_calories
    end

    def ingredients
        desserts.map do |dessert|
            dessert.ingredients
        end
    end

    def shopping_list
        list = []
        desserts.each do |dessert|
            dessert.ingredients.each  do |ingredient|
            list << ingredient.name 
            end
        end
        list
    end



end