require "./lib/airport.rb"

describe Airport do
  let(:airport) { described_class.new }

  it "has a hanger object that is an array" do
    expect(airport.hanger).to eq []
  end
end
