class Aircraft
  def land(airport)
    airport.hanger.push(self) unless airport.at_max_capacity? || airport.weather_is_stormy?
  end

  def takeoff(airport)
    airport.hanger.delete(self) unless airport.weather_is_stormy?
  end
end
