class StringCalculator
  DELIMITER = %r{^//.\n.+$}

  def add(*args)
    @arguments = args

    if explicit_delimiter?
      if no_illegal_characters?
        @arguments = characters.split(delimiter)
      else
        handle_illegal_character
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

  private

  def arguments
    @arguments
  end

  def delimiter
    match_data[:delimiter]
  end

  def characters
    match_data[:characters]
  end

  def no_illegal_characters?
    character_list.all? { |char| char =~ /\d/ || char == delimiter }
  end

  def character_list
    characters.split("")
  end

  def match_data
    arguments.first.match(%r{^//(?<delimiter>.)\n(?<characters>.+)$})
  end

  def explicit_delimiter?
    arguments && arguments.first =~ DELIMITER
  end

  def handle_illegal_character
    illegal_char = character_list.find { |char| char !~ /\d/ && char != delimiter }
    illegal_char_position = characters =~ /#{illegal_char}/
    raise ArgumentError, "'#{delimiter}' expected but '#{illegal_char}' found at position #{illegal_char_position}."
  end
end
