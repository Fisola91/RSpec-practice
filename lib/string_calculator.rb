class StringCalculator
  DELIMITER = %r{^//.\n.+$}
  def add(*arguments)
    if explicit_delimiter?(arguments)
      match_data = arguments.first.match(%r{^//(?<delimiter>.)\n(?<numbers>.+)$})
      delimiter = match_data[:delimiter]
      numbers = match_data[:numbers]

      character_list = numbers.split("")
      if character_list.all? { |char| char =~ /\d/ || char == delimiter }
        arguments = numbers.split(delimiter)
      else
        illegal_character(character_list, delimiter, numbers)
      end
    end
    joined_arguments = arguments.join(",")
    if joined_arguments != "" && joined_arguments !~ /\d$/
      raise ArgumentError
    end

    list_of_strings = joined_arguments.scan(/\d+/)
    sum = list_of_strings.inject(0) { |sum, num| sum + num.to_i}
    sum
  end

  def explicit_delimiter?(arguments)
    arguments && arguments.first =~ DELIMITER
  end

  def illegal_character(character_list, delimiter, numbers)
    illegal_char = character_list.find { |char| char !~ /\d/ && char != delimiter }
    illegal_char_position = numbers =~ /#{illegal_char}/
    raise ArgumentError, "'#{delimiter}' expected but '#{illegal_char}' found at position #{illegal_char_position}."
  end
end
