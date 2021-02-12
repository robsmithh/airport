class Aircraft
  def land(airport)
    airport.hanger.push(self)
  end
end
