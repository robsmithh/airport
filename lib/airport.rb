class Airport
  attr_reader :hanger
  attr_accessor :weather
  attr_accessor :capacity

  def initialize
    @hanger = []
    @weather = "clear"
    @capacity = 2
  end
end
