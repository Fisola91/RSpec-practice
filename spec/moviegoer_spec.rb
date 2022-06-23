require "moviegoer"

RSpec.describe Moviegoer do
  let(:moviegoer) { Moviegoer.new(16)}
  let(:moviegoer_2) { Moviegoer.new(65)}
  let(:moviegoer_3) { Moviegoer.new(21)}
  let(:moviegoer_4) { Moviegoer.new(17)}

  context "ticket_price" do
    it "returns 10.00 ticket price for old-age pensioneers" do
      expect(moviegoer.ticket_price).to eq(15)
    end

    it "returns 15.00 ticket price for age less than 60" do
      expect(moviegoer_2.ticket_price).to eq(10)
    end
  end

  context "scary movie" do
    it "allows to watch scary movie if 18 and above" do
      expect(moviegoer_3.watch_scary_movie?).to eq(true)
    end
  end


end
