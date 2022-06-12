require "ip_address_converter"

RSpec.describe "ip address converter" do
  context "convert ip adress to number" do
    it "returns number for ip address string" do
      expect(ip_to_num("37.160.113.170")).to eq(631271850)
      expect(ip_to_num("192.168.0.1")).to eq(3232235521)
    end
  end
end
