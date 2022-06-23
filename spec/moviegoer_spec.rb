require "moviegoer"

RSpec.describe Moviegoer do
  let(:moviegoer) { Moviegoer.new(16)}
  let(:moviegoer_2) { Moviegoer.new(65)}

  context "pension" do
    it "returns 10.00 ticket price for old-age pensioneers" do
      expect(moviegoer.ticket_price).to eq(15)
    end

    it "returns 15.00 ticket price for age less than 60" do
      expect(moviegoer_2.ticket_price).to eq(10)
    end
  end
end
