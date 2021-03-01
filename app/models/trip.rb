class Trip
  @@all = []

  attr_accessor :listing, :guest, :checkin_date, :check_out_date
  def initialize(args)
    args.each { |key, value|  instance_variable_set("@#{key}", value) unless value.nil? }
   Trip.all << self
  end

  def self.all
    @@all
  end

end
