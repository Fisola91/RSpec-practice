 # The splat operator (*) can handle unknown number of argument
 # It converts array to parameter and vice versa

def add(*nums)
  if nums && nums.first =~ %r{^//.\n.+$}
    match_data = nums.first.match(%r{^//(?<delimiter>.)\n(?<numbers>.+)$})
    delimiter = match_data[:delimiter]
    p delimiter
    numbers = match_data[:numbers]
    p numbers


    character_list = numbers.split("")
    p character_list
    if character_list.all? { |char| char =~ /\d/ || char == delimiter }
      nums = numbers.split(delimiter)
    else
      illegal_char = character_list.find { |char| char !~ /\d/ && char != delimiter }
      illegal_char_position = numbers =~ /#{illegal_char}/
      raise ArgumentError, "'#{delimiter}' expected but '#{illegal_char}' found at position #{illegal_char_position}."
    end
  end
  joined_arguments = nums.join(",")
  p joined_arguments
  if joined_arguments != "" && joined_arguments !~ /\d$/
    raise ArgumentError
  end


  list_of_strings = joined_arguments.scan(/\d+/)
  #list_of_strings = joined_arguments.split(/[, \n]/)

  sum = list_of_strings.inject(0) { |sum, num| sum + num.to_i}
  sum
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

  fit "returns an error when separator is added to end of an element" do
    expect { add("1,2,") }.to raise_error(ArgumentError)
  end

  it "returns sum when scan through with the digit" do
      expect(add("//;\n1;3")).to eq(4)
  end

  it "returns sum when scan through with the digit" do
    expect(add("//|\n1|2|3")).to eq(6)
  end

  it "returns sum when scan through with the digit" do
    expect(add("//sep\n2sep5")).to eq(7)
  end

  it "returns an error when ',' is found instead of '|'" do
    expect { add("//|\n1|2,3") }.to raise_error(
      ArgumentError,
      "'|' expected but ',' found at position 3."
    )
  end

  it "returns an error when '-' is found instead of 'x'" do
    expect { add("//x\n1x2x3x4-5") }.to raise_error(
      ArgumentError,
      "'x' expected but '-' found at position 7."
    )
  end

  fit "returns sum when scan through" do
    expect(add("//|\n2|2|2")).to eq(6)

  end

  it "can use an arbitrary delimiter" do
    expect(add("//x\n1x2x3")).to eq((6))
  end
end
