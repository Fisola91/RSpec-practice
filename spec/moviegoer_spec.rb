require "moviegoer"

RSpec.describe Moviegoer do
  let(:moviegoer) { Moviegoer.new(16) }
  let(:moviegoer_2) { Moviegoer.new(65) }
  let(:moviegoer_3) { Moviegoer.new(21) }
  let(:moviegoer_4) { Moviegoer.new(17) }
  let(:moviegoer_5) { Moviegoer.new(21, member: true) }
  let(:moviegoer_6) { Moviegoer.new(17, member: false) }


  context "ticket_price" do
    it "returns 10.00 ticket price for old-age pensioneers" do
      expect(moviegoer.ticket_price).to eq(15)
    end

    it "returns 15.00 ticket price for age less than 60" do
      expect(moviegoer_2.ticket_price).to eq(10)
    end
  end

  context "watch scary movie" do
    it "allows to watch scary movie if 18 and above" do
      expect(moviegoer_3.watch_scary_movie?).to eq(true)
    end

    it "doesn't allow to watch scary movie if age is less than 18" do
      expect(moviegoer_4.watch_scary_movie?).to eq(false)
    end
  end

  context "entitlesd to free popcorn" do
    it "returns true for a movie club member" do
      expect(moviegoer_5.claim_free_popcorn!).to eq("🍿")
    end
    it "returns error for a non-member" do
      expect { moviegoer_6.claim_free_popcorn! }.to raise_error(NotMovieClubMemberError)
    end
  end
end
