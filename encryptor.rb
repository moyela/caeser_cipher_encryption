require_relative "cipher_methods"
=begin 
    This script is intended to create a Caeser Cypher that shifts each individual letter in text inputted to it along the number
    positions of the english alphabet letters. 

    For example, a 3 right shift changes "Ant." to "Dqw." I think its pretty cool sha.

    The 'caeserCypher' function below accepts the input string, a key representing the number of shifts, and the direction of the shift, and returns
    the shifted text.

=end

def caeser_cypher_encrypt input_string, encryption_key
# this method brings all our previous functions together and uses them to translate our text to code, firsfor lowercase and then uppercase letters
    
    encryptor = CaeserCypherKit.new()
    
    # lowercase_letters = encryptor.lowercase_letters; uppercase_letters = encryptor.uppercase_letters

    # encryptor.new_line(); puts "Enter the text you want to encrypt below"; encryptor.prompt()

    # text = gets.chomp(); encryptor.new_line()

    # puts "Enter your encryption key. You need this key to decrypt the text. It should be a positive integer."; 
    # encryptor.new_line(); encryptor.prompt()

    # key = gets.chomp().to_i; encryptor.clear_text(0.5)

    # puts "the INPUT text is: '#{text}'"
    # puts "the encryption key is: #{key}"

    # puts "the ENCRYPTED text is: '#{output}'"
    output = encryptor.cypher_encrypt(input_string, encryption_key)

    return output
end

#x = "Hello, my lovelies."

# caeser_cypher_encrypt()