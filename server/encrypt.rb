# load the entire encryption kit from cipher_methods in the lib directory
require_relative "../lib/cipher_methods"

def caeser_cypher_encrypt input_string, encryption_key
    
    encryptor = CaeserCypherKit.new()
    
    output = encryptor.cypher_encrypt(input_string, encryption_key)

    return output
end
