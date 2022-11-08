require "gratitudes"

RSpec.describe Gratitudes do
  it "returns an empty sentiment if given no input" do
      gratitudes = Gratitudes.new
      result = gratitudes.format
      expect(result).to eq "Be grateful for: "
  end

  it "returns the thing to be grateful for when given one thing" do
    gratitudes = Gratitudes.new
    gratitudes.add("The Weather")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: The Weather"
  end

  it "returns multiple things to be grateful for when given multiple things" do
    gratitudes = Gratitudes.new
    gratitudes.add("The Weather")
    gratitudes.add("Good Health")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: The Weather, Good Health"
  end
end