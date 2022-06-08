class StringCalculator
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
end
