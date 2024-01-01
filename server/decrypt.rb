# load the entire encryption kit from cipher_methods in the lib directory
require_relative "../lib/cipher_methods"

def caeser_cypher_decrypt input_text, encryption_key
   
    decryptor = CaeserCypherKit.new()

    output = decryptor.cypher_decrypt(input_text, encryption_key)

    return output
end
