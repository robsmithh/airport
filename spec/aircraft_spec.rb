require "./lib/aircraft.rb"
require "./lib/airport.rb"

describe Aircraft do
  let(:aircraft) { described_class.new }
  let(:airport) { Airport.new }
  let(:aircraft2) { described_class.new }
  let(:aircraft3) { described_class.new }

  describe ".land" do
    it "lands the aircraft" do
      airport.weather = "clear"
      aircraft.land(airport)
      expect(airport.hanger).to eq [aircraft]
    end
  end

  describe ".land" do
    it "prevents the aircraft from landing in a storm" do
      airport.weather = "stormy"
      aircraft.land(airport)
      expect(airport.hanger).to eq []
    end
  end

  describe ".land" do
    it "prevents aircraft landing when airport is full" do
      aircraft.land(airport)
      aircraft2.land(airport)
      aircraft3.land(airport)
      expect(airport.hanger).to eq [aircraft, aircraft2]
    end
  end

  describe ".land" do
    it "allows for variable change of airport size" do
      airport.capacity = 1
      aircraft.land(airport)
      aircraft.land(airport)
      expect(airport.hanger).to eq [aircraft]
    end
  end

  describe ".takeoff" do
    it "launches the aircraft and removes from the hanger" do
      airport.weather = "clear"
      aircraft2.land(airport)
      aircraft.land(airport)
      aircraft.takeoff(airport)
      expect(airport.hanger).to eq [aircraft2]
    end
  end

  describe ".takeoff" do
    it "prevents the aircraft from takeing off in a storm" do
      aircraft.land(airport)
      airport.weather = "stormy"
      aircraft.takeoff(airport)
      expect(airport.hanger).to eq [aircraft]
    end
  end
end
