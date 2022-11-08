require 'report_length'

RSpec.describe "report_length method" do
  it "returns 0 if given an empty string" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end

  it "returns 5 if given a 5-character string" do
    result = report_length("horse")
    expect(result).to eq "This string was 5 characters long."
  end

  it "returns 10 if given a 10-character string" do
    result = report_length("horsehorse")
    expect(result).to eq "This string was 10 characters long."
  end
end