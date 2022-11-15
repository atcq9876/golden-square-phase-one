require 'greet'

RSpec.describe "greet method" do
  it "takes a name and returns a greeting with that name" do
    result = greet("Andy")
    expect(result). to eq "Hello, Andy!"
  end
end