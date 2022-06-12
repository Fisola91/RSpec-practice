require "ip_address_converter"

RSpec.describe "ip address converter" do
  context "convert ip adress to number" do
    it "returns number for ip address string" do
      expect(ip_to_num("37.160.113.170")).to eq(631271850)
    end
  end
end
