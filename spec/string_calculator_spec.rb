 # The splat operator (*) can handle unknown number of argument
 # It converts array to parameter and vice versa
def add(*nums)
  #.scan(/(\d,\d\s\d)/).flatten.join(",")
  return 'error' if nums.map {|num| num[-1] == "," }.any?
  joined_arguments = nums.join(",") # Probably it should be here. $ id the possible answer
  p joined_arguments
  list_of_strings = joined_arguments.split(/[, \n]/)
  #list_of_strings = joined_arguments.scan(/\d/)
  p list_of_strings
  sum = list_of_strings.inject(0) { |sum, num| sum + num.to_i}

  p sum
end

RSpec.describe "string calculator" do
  it "returns zero when an empty string is entered" do
    expect(add("")).to eq(0)
  end

  it "returns one when one is entered" do
    expect(add("1")).to eq(1)
  end

  it "returns sum of two arguments" do
    expect(add("1,2")).to eq(3)
  end

  it "returns sum of two arguments that makes use of split method" do
    expect(add("1", "1,2")).to eq(4)
  end

  it "returns sum when split with newlines separators and comma" do
    expect(add("1,2\n3")).to eq(6)
  end

  # it "returns sum when split with newlines separators and comma" do
  #   expect(add("1,2\n3,5\n1,1,10\n5,6,1,2\n3")).to eq(63)
  # end

  it "returns an error when separator is added to end of an element" do
    expect(add("1,2,")).to eq("error")
  end
end
