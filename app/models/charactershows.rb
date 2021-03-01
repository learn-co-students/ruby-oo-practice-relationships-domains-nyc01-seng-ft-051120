class CharacterShows
  @@all = []
  attr_accessor :character, :show

  def initialize(character, show)
   @character = character
   @show = show
   CharacterShows.all << self
  end

  def self.all
   @@all
  end
end
