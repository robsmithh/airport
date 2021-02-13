require "./lib/aircraft.rb"
require "./lib/airport.rb"

describe Aircraft do
  let(:aircraft) { described_class.new }
  let(:airport) { Airport.new }
  let(:aircraft2) { described_class.new }
  let(:aircraft3) { described_class.new }

  describe ".land" do
    context "When the weather is clear and the airpirt isnt full" do
      it "lands the aircraft" do
        airport.weather = "clear"
        aircraft.land(airport)
        expect(airport.hanger).to eq [aircraft]
      end
    end

    context "When the weather is stormy" do
      it "prevents the aircraft from landing in a storm" do
        airport.weather = "stormy"
        aircraft.land(airport)
        expect(airport.hanger).to eq []
      end
    end

    context "When the airport is full" do
      it "prevents the aircraft from landing" do
        aircraft.land(airport)
        aircraft2.land(airport)
        aircraft3.land(airport)
        expect(airport.hanger).to eq [aircraft, aircraft2]
      end
    end
  end

  describe ".takeoff" do
    context "When the weather is clear" do
      it "launches the aircraft and removes from the hanger" do
        airport.weather = "clear"
        aircraft2.land(airport)
        aircraft.land(airport)
        aircraft.takeoff(airport)
        expect(airport.hanger).to eq [aircraft2]
      end
    end

    context "When the weather is stormy" do
      it "prevents the aircraft from taking off" do
        aircraft.land(airport)
        airport.weather = "stormy"
        aircraft.takeoff(airport)
        expect(airport.hanger).to eq [aircraft]
      end
    end
  end
end
