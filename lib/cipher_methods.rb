class CaeserCypherKit
    # the attribute reader below lets us access the instance methods values for the given variables
    attr_reader :lowercase_letters, :uppercase_letters

    def initialize
        # the cypher encryptor and decryptor works using the lowercase and uppercase letter arrays below, so they are initialized here
        # and made available through the lowercase_letters and uppercase_letters methods
        @lowercase_letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
        
        @uppercase_letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    end

    # i made this method so I could easily add a new line without needing to insert a string. with no arguments, it prints one line 
    def new_line (number_of_lines = nil)
        if number_of_lines == nil
            number_of_lines = 1
        end

        print "\n" * number_of_lines
    end
    
    def prompt
        # all this function does is print a prompt for an input
        print ">> "
    end
    
    def clear_text time
        # all this function does is clear the screen after a time given in seconds
        sleep(time)
        print "\e[A\e[K"
    end

    def delay time
        # all this function does is delay for the number of seconds passed as an argument
        sleep(time)
    end
    
    # this function takes in the input text, splits it into an array of single digit strings, and replaces the letters with their index in the
    # alphabet array below
    def text_to_index text, alphabet_array
        
        alphabet = alphabet_array
    
        # the variable below represents the input script split into individual string characters and added to an array in order
        input_text_array = text.split('')

        # the variable below represents the array of the positions of each letter that will be returned by this function
        input_text_index_array = []
    
        for item in input_text_array

            # The conditional below checks if the array item is a letter from the alphabet by checking it against the alphabet array
            # if the array item is in the alphabet, its index gets added to a new array
            if alphabet.include?(item) == true

                input_text_index_array << alphabet.index(item)

            # if the array item is not in the alphabet, the item gets added to the new position array as it needs no conversion
            else
                input_text_index_array << item
 
            end
        end
        
        # the function returns an array representing the indexes of each letter in the alphabet arrays so they can be shifted
        return input_text_index_array
    end
    
    def shift_text_index position_array, key
    # this method changes the indexes of the letters in the input array based on the number given as the input key
    
        new_position_array = []
    
        for item in position_array
            if item.class == Integer
                new_position = item + key
    
                while new_position > 25
                    new_position -= 26
                end
                while new_position < 0
                    new_position += 26
                end
    
                new_position_array << new_position
    
            else
                new_position_array << item
            end
    
        end
        
        # this method returns an array of indexes that have been shifted based on the encryptopn key
        return new_position_array
    end

    def unshift_text_index position_array, key
    # this method changes the indexes of the letters in the input array based on the number given as the encryption/decryption key
        
    new_position_array = []
    
        for item in position_array
            if item.class == Integer
                new_position = item - key
    
                while new_position > 25
                    new_position -= 26
                end
                while new_position < 0
                    new_position += 26
                end
    
                new_position_array << new_position
    
            else
                new_position_array << item
            end
    
        end
        
         # this method returns an array of indexes that have been unshifted based on the original encryptopn key, if said key is correct
        return new_position_array
    end
    
    def index_to_text new_position_array, alphabet_array
    # this method takes a array of the indexes of the new letters, compares it againt the alphabet array, and returns an array of strings instead
    # then it merges the array and returns the converted text back
    
        alphabet = alphabet_array
        ciphered_string_array = []
    
        for item in new_position_array
            if item.class == Integer
                ciphered_string_array << alphabet[item]
            else
                ciphered_string_array << item
            end
        end
    
        ciphered_array = ciphered_string_array.join
    
        return ciphered_array
    end

    def cipher_text text, key, letter_array
    # this method used the three predefined methods to cipher the input text

        input_index_array = text_to_index(text, letter_array)

        shifted_index_array = shift_text_index(input_index_array, key)
    
        ciphered_text = index_to_text(shifted_index_array, letter_array)

        return ciphered_text
    end

    def undo_cipher_text text, key, letter_array
    # this method used the three predefined methods to decipher the input text

        input_index_array = text_to_index(text, letter_array)

        shifted_index_array = unshift_text_index(input_index_array, key)
    
        deciphered_text = index_to_text(shifted_index_array, letter_array)

        return deciphered_text
    end

    def cypher_encrypt text, key
    # this method encrypts the input text based on the key provided

        ciphered_lowercase_text = cipher_text(text, key, lowercase_letters)

        ciphered_text = cipher_text(ciphered_lowercase_text, key, uppercase_letters)

        return ciphered_text
    end

    
    def cypher_decrypt text, key
    # this method decrypts the input text based on the key provided

        deciphered_lowercase_text = undo_cipher_text(text, key, lowercase_letters)

        deciphered_text = undo_cipher_text(deciphered_lowercase_text, key, uppercase_letters)

        return deciphered_text
    end

end