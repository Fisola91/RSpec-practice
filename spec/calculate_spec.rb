require "calculator"

RSpec.describe Calculator do
  describe "divide" do
    it "returns correct result for divisible integers" do
      expect(subject.divide(number: 10, divisor: 5)).to eq 2
    end

    it "breaks" do
      expect {
        subject.divide(number: 10, divisor: 0)
      }.to raise_error(ArgumentError, /Come on/i)
    end

    it "works with hash arguments" do
      # http://example.com/calculate?number=10&divisor=5

      params = {
        number: "15",
        divisor: "2"
      }
      params.transform_values!(&:to_f)

      expect(subject.divide(**params)).to eq 7.5
    end
  end
end
