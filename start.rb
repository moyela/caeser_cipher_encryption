require 'sinatra'
require 'json'
require_relative 'server/encrypt'
require_relative 'server/decrypt'

get '/' do
  'Server active!'
end

get '/encrypt' do
  content_type :json

  request_payload = JSON.parse(request.body.read)

  input_string = request_payload['text']
  input_key = request_payload['key']

  encrypted_text = caeser_cypher_encrypt(input_string, input_key)

  { output:encrypted_text, key:input_key }.to_json
end

get '/decrypt' do
  content_type :json

  request_payload = JSON.parse(request.body.read)

  input_string = request_payload['text']
  input_key = request_payload['key']

  decrypted_text = caeser_cypher_decrypt(input_string, input_key)
  { result: decrypted_text }.to_json
end

configure { set :server, :puma }