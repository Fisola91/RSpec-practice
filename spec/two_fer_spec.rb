require "two_fer"

RSpec.describe "two-fer" do
  it "returns a string message with a given name" do
    expect(two_fer("John")).to eq("One for John, one for me.")
  end

  it "returns a string without any argument" do
    expect(two_fer).to eq("One for you, one for me.")
  end

  it "returns a string with an empty string argument" do
    expect(two_fer("")).to eq("One for you, one for me.")
  end

  it "returns a string with a nil argument" do
    expect(two_fer(nil)).to eq("One for you, one for me.")
  end

end
