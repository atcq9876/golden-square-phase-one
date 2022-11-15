require 'string_builder'

RSpec.describe StringBuilder do
  it "returns the added string" do
    string = StringBuilder.new
    string.add("Hello")
    result = string.output
    expect(result).to eq "Hello"
  end

  it "returns the correct string length" do
    string = StringBuilder.new
    string.add("Length")
    result = string.size
    expect(result).to eq 6
  end

  it "returns an empty string of no string is added" do
    result = StringBuilder.new.output
    expect(result).to eq ""
  end
end
