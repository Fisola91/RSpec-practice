require "amusement_park"

RSpec.describe Attendee do
  let(:park) { Attendee.new(206)}
  it "returns the instance height of the attendee" do
    expect(park.height).to eq(206)
  end

  it "returns the instance's pass_id or nil" do
    expect(park.pass_id).to eq(nil)
  end
end
