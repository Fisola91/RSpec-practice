require "two_fer"

RSpec.describe "two-fer" do
  name = gets.chomp
  it "retunrs a string message with a given name" do
    expect(two_fer).to eq("One for #{name}, one for me.")
  end

  it "returns a string without a name when not given a name" do
    expect(two_fer).to eq("One for you, one for me")
  end

end
