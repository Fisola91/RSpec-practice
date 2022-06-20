require "assembly_line"

RSpec.describe AssemblyLine do
  let(:assembly_line) { AssemblyLine.new(nil)}

  it "returns production rate per hour" do
    expect(assembly_line.production_rate_per_hour).to eq(1193.4)
  end

  it "returns number of working items produced per minute" do
    expect(assembly_line.working_items_per_minute).to eq(19)
  end
  # it "checks for specific error" do
  #   expect { assembly_line.validate_argument }.to raise_error(ArgumentError)
  # end
end
