require 'counter'

RSpec.describe Counter do
  it "returns a count of 5 when 5 is added" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "returns a count of 8 when 8 is added" do
    counter = Counter.new
    counter.add(8)
    result = counter.report
    expect(result).to eq "Counted to 8 so far."
  end

  it "returns a count of 10 when 5 is added twice" do
    counter = Counter.new
    counter.add(5)
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 10 so far."
  end

  it "returns a count of 0 when no number is added" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
end