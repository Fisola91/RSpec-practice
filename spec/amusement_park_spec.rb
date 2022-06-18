require "amusement_park"

RSpec.describe Attendee do
  let(:attendee) { Attendee.new(206)}
  let(:attendee_1) { Attendee.new(106)} #Lazy loading
  it "returns the instance height of the attendee" do
    expect(attendee.height).to eq(206)
  end

  it "returns the instance's pass_id or nil" do
    expect(attendee.pass_id).to eq(nil)
  end

  it "returns pass_id when set as an argument to the issue_pass" do
    expect()
  end
end
