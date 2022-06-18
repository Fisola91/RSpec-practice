require "amusement_park"

RSpec.describe Attendee do
  let(:attendee) { Attendee.new(106)}
  it "returns the instance height of the attendee" do
    expect(attendee.height).to eq(106)
  end

  it "returns the instance's pass_id or nil" do
    expect(attendee.pass_id).to eq(nil)
  end

  it "returns pass_id when set as an argument to the issue_pass" do
    attendee.issue_pass!(42)
    expect(attendee.pass_id).to eq(42)
  end

  it "returns nil when revoke the pass_id" do
    attendee.issue_pass!(42)
    attendee.revoke_pass!
    expect(attendee.pass_id).to eq(nil)
  end
end
