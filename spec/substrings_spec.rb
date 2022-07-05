require "substrings"

RSpec.describe "#substrings" do

  context "substring" do
    it "returns a hash listing each substring found in the original string" do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(substrings("below", dictionary)).to eq( { "below" => 1, "low" => 1 } )
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq( { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 } )
    end
  end

  # context "missing letter" do
  #   it "returns error if one or more letters are missing within the first argument" do
  #     dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  #     expect { substrings("Howd partner, sit down! How's it going?", dictionary) }.to raise_error(ArgumentError, "check")
  #   end
  # end


  # it "returns error" do
  #
  #   #expect(substrings("below", dictionary)).to eq( { "below" => 1, "low" => 1 } )
  #
  # end
end
