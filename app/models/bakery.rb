class Bakery

    attr_reader :bakery

    @@all = []

    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        desserts.map do |dessert|
            dessert.ingredients
        end
    end

    def average_calories
        desserts.reduce(0) do |sum, dessert|
            (sum + dessert.calories) / desserts.length
        end
    end

    def self.total_price
        self.all.reduce(0) do |sum, painting|
          sum + painting.price
        end
      end

    def shopping_list
        desserts.map do |dessert|
            dessert.ingredients_names
        end
    end

end