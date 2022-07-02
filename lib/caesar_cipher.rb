class CaesarCipher
  ALPHABET = ('a'..'z').to_a.reverse
  def caesar_cipher(string, factor)
    string = string.downcase.split("")
    string.map do |char|
      if char.match(/\w/).nil?
        p char
      else
        ALPHABET[ALPHABET.index(char) - factor]
      end
    end.join.capitalize
  end
end

cc = CaesarCipher.new
cc.caesar_cipher("what a string!", 5)
