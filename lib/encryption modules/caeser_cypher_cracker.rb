require_relative 'cypher_methods'

$cracker = CaeserCypherKit.new()

def decryption_loop encrypted_string

    number_of_tries = 1; lowercase_letters = $cracker.lowercase_letters; uppercase_letters = $cracker.uppercase_letters;

    while number_of_tries <= 25

        puts "if the encryption key was #{number_of_tries}"
        
        output = $cracker.cypher_decrypt(encrypted_string, number_of_tries)
    
        puts "the ORIGINAL text would be #{output}"; $cracker.new_line(2)
        
        number_of_tries += 1
        # $cracker.delay(1)
    end
end

def caeser_cypher_cracker

    puts "Enter the text you want to decrypt below"; $cracker.prompt()

    text = gets.chomp(); $cracker.clear_text(1)

    puts "Since we have no encryption key, we will return all 25 possible reversals of the text."

    puts "the ENCRYPTED text is #{text}"

    decryption_loop(text)

    puts "which encryption key produced a coherent sentence?"; $cracker.prompt

    encryption_key = gets.chomp().to_i

    puts "then the original encryption key was a multiple of 26 + #{encryption_key}"

    original_message = $cracker.cypher_decrypt(text, encryption_key)

    puts "the original message is: #{$cracker.new_line(2)}'#{original_message}'"

end

caeser_cypher_cracker()