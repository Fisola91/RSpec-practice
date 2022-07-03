require "substrings"

RSpec.describe "#substrings" do
  it "returns a hash listing each substring found in the original string" do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    expect(substrings("below", dictionary)).to eq( { "below" => 1, "low" => 1 } )
  end
end
