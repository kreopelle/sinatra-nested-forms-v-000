class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    SHIPS << self
  end


end
