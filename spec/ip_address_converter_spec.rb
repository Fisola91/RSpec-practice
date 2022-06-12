require "ip_address_converter"

RSpec.describe "ip address converter" do
  context "convert ip address to number" do
    it "returns number for ip address string" do
      expect(ip_to_num("37.160.113.170")).to eq(631271850)
      expect(ip_to_num("192.168.0.1")).to eq(3232235521)
      expect(ip_to_num("173.194.40.200")).to eq(2915182792)
    end
  end

  context "convert number to ip address" do
    it "returns string ip address for number" do
      expect(num_to_ip(631271850)).to eq("37.160.113.170")
      expect(num_to_ip(3232235521)).to eq("192.168.0.1")
      expect(num_to_ip(2915182792)).to eq("173.194.40.200")
    end
  end
end
