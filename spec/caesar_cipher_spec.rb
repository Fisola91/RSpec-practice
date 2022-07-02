require "caesar_cipher"

RSpec.describe "caesar cipher" do
  let(:caesar) { CaesarCipher.new}
  it "takes in a string and a fixed factor and output the modifies string" do
    expect(caesar.caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end
