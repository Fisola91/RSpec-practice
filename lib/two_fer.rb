def two_fer(name = nil)
  if name.nil? || name.empty?
    "One for you, one for me."
  else
    "One for #{name}, one for me."
  end
end
