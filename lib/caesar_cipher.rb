class CaesarCipher
  ALPHABET = ('a'..'z').to_a.reverse
  def caesar_cipher(string, factor)
    string = string.downcase.split("")
    string.map do |char|
      if char.match(/\w/).nil?
        char
      elsif char.match(/\d/)
        raise ArgumentError, "make sure the method argument is alphabet"
      else
        ALPHABET[ALPHABET.index(char) - factor]
      end
    end.join.capitalize
  end
end

# cc = CaesarCipher.new
# p cc.caesar_cipher("What a 6string!", 5)
