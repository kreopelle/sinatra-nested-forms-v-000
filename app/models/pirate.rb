class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
end
