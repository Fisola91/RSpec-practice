 # The splat operator (*) can handle unknown number of argument
 # It converts array to parameter and vice versa

 def add(*nums)
  return 'error' if nums.map {|num| num[-1] =~ /,/ }.any?
  joined_arguments = nums.join(",")
  p joined_arguments

  list_of_strings = joined_arguments.scan(/\d+/)
  #list_of_strings = joined_arguments.split(/[, \n]/)
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
    #expect(add("//sep\n2sep5")).to eq(7)
  end

  it "returns sum when split with newlines separators and comma" do
    expect(add("1,2\n3,5\n1,1,10\n5,6,1,2\n3")).to eq(40)
  end

  it "returns an error when separator is added to end of an element" do
    expect(add("1,2,")).to eq("error")
  end

  it "returns sum when scan through with the digit" do
      expect(add("//;\n1;3")).to eq(4)
  end

  it "returns sum when scan through with the digit" do
    expect(add("//|\n1|2|3")).to eq(6)
  end

  # it "returns sum when scan through with the digit" do
  #   expect(add("//sep\n2sep5")).to eq(7)
  # end


  #Allow the add method to handle different delimiters

# To change the delimiter, the beginning of the input will contain a separate line that looks like this:
# //[delimiter]\n[numbers]
# “//;\n1;3” should return “4”
end
