def fizz_buzz(num)
  if num % 15 == 0
    "fizzbuzz"
  elsif num % 3 == 0
    "fizz"
  elsif num % 5 == 0
    "buzz"
  else
    num.to_s
  end
end

RSpec.describe "fizzbuzz" do
  it "returns 1 when given 1" do
    expect(fizz_buzz(1)).to eq("1")
  end

  it "returns 2 when given 2" do
    expect(fizz_buzz(2)).to eq("2")
  end

  it "returns fizz when given 3" do
    expect(fizz_buzz(3)).to eq("fizz")
  end

  it "returns buzz when given 10" do
    expect(fizz_buzz(10)).to eq("buzz")
  end

  it "returns buzz when given 5" do
    expect(fizz_buzz(5)).to eq("buzz")
  end

  it "returns fizzbuzz when given 15" do
    expect(fizz_buzz(15)).to eq("fizzbuzz")
  end

end
