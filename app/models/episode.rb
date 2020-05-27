class Episode
  @@all = []
  attr_accessor :name
  attr_reader :show

  def initialize(name, show)
    @name = name
    @show = show
    Episode.all << self
  end

  def self.all
   @@all
 end

end
