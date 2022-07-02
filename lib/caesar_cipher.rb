class CaesarCipher
  ALPHABET = ('a'..'z').to_a.reverse
  def caesar_cipher(string, factor)
    p ALPHABET
    string = string.downcase.split("")
    string.each_with_index.map do |char, _|
      if char.match(/\w/).nil?
        char
      else
        p ALPHABET[ALPHABET.index(char) - factor]
      end
    end.join.capitalize
    # string.join
  end
end

cc = CaesarCipher.new
cc.caesar_cipher("what a string!", 5)
