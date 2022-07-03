require "caesar_cipher"

RSpec.describe "caesar cipher" do
  let(:caesar) { CaesarCipher.new }
  it "takes in a string and a fixed factor and output the modifies string" do
    expect(caesar.caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar.caesar_cipher("I concur!", 5)).to eq("N htshzw!")
  end

  # it "returns string" do
  #   expect { caesar.caesar_cipher("45rds", 5) }.to raise_error(ArgumentError, "This doesn't match the string")
  # end
end
