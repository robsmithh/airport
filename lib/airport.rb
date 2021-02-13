class Airport
  attr_reader :hanger
  attr_accessor :weather
  attr_accessor :capacity

  def initialize(capacity: 2, weather: "clear")
    @hanger = []
    @weather = weather
    @capacity = capacity
  end

  def at_max_capacity?
    hanger.length >= capacity
  end

  def weather_is_stormy?
    weather == "stormy"
  end
end
