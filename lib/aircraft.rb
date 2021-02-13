class Aircraft
  def land(airport)
    if airport.weather != "stormy"
      if airport.hanger.length() < airport.capacity
        airport.hanger.push(self)
      end
    end
  end
  def takeoff(airport)
    if airport.weather != "stormy"
      airport.hanger.delete(self)
    end
  end
end
