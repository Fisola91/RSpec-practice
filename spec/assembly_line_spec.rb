require "assembly_line"

RSpec.describe AssemblyLine do
  let(:assembly_line) { AssemblyLine.new(6)}

  it "returns production rate per hour" do
    expect(assembly_line.production_rate_per_hour).to eq(1193.4)
  end
end
