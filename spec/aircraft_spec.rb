require "./lib/aircraft.rb"
require "./lib/airport.rb"

describe Aircraft do
  let(:aircraft) { described_class.new }
  let(:airport) { Airport.new }

  describe ".land" do
    it "lands the aircraft" do
      aircraft.land(airport)
      expect(airport.hanger).to eq [aircraft]
    end
  end
end
