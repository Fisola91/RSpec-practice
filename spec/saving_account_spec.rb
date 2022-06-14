require "saving_account"
RSpec.describe SavingsAccount do
  it "returns interest rate" do
    expect(subject.interest_rate(200.75)).to eq(0.5)
  end

  it "returns annual balance" do
    expect(subject.annual_balance_update(200.75)).to eq(201.75375)
  end

  it "returns years before desired balance" do
    expect(subject.years_before_desired_balance(200.75, 214.88)).to eq(14)
  end
end
