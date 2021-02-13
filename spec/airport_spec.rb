require "./lib/airport.rb"

describe Airport do
  let(:airport) { described_class.new }

  it "has a hanger object that is an array" do
    expect(airport.hanger).to eq []
  end

  it "sets the default capacity to 2" do
    expect(airport.capacity).to eq 2
  end

  it "allows the capacity to change" do
    airport = described_class.new(capacity: 3)
    expect(airport.capacity).to eq 3
  end

  it "sets the default weather to clear" do
    expect(airport.weather).to eq "clear"
  end

  it "allows the weather to change" do
    airport = described_class.new(weather: "stormy")
    expect(airport.weather).to eq "stormy"
  end

end
