require 'present'

RSpec.describe Present do
  it "return wrapped present contents" do
    present = Present.new
    result = present.wrap("train")
    expect(result).to eq "train"
  end

  it "returns present when wrapped then unwrapped" do
    present = Present.new
    present.wrap("car")
    result = present.unwrap
    expect(result).to eq "car"
  end

  context "when a present is wrapped more than once" do
    it "fails" do
      present = Present.new
      present.wrap("plane")
      expect { present.wrap("soldier") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "when a present has not been wrapped and unwrap is called" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end