require "amusement_park"

RSpec.describe Attendee do
  let(:park) { Attendee.new(206)}
  it "returns the instance height of the attendee" do
    expect(park.height).to eq(206)
  end
end
