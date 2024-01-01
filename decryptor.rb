require_relative "cipher_methods"

=begin 
    This script is intended to create a Caeser Cypher decryptor that unshifts each individual letter in text inputted to it along the number
    positions of the english alphabet letters. 
=end

def caeser_cypher_decrypt input_text, encryption_key
# this method brings all our previous functions together and uses them to translate our text to code
   
    decryptor = CaeserCypherKit.new()
    
    # lowercase_letters = decryptor.lowercase_letters; uppercase_letters = decryptor.uppercase_letters

    # decryptor.new_line(); puts "Enter the text you want to decrypt below"; decryptor.prompt()

    # text = gets.chomp(); decryptor.new_line();

    # puts "Enter the encryption key that was used to create the string. It should be a positive integer."; 
    # decryptor.new_line(); decryptor.prompt()

    # key = gets.chomp().to_i; decryptor.clear_text(0.5)

    # puts "the INPUT text is '#{text}'"
    # puts "the encryption key is: #{key}"

    output = decryptor.cypher_decrypt(input_text, encryption_key)

    # puts "the DECRYPTED text is '#{output}'"
    return output
end

#x = "Hello, my lovelies."

# caeser_cypher_decrypt()