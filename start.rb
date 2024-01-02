require 'sinatra'
require 'json'
require_relative 'server/encrypt'
require_relative 'server/decrypt'

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

get '/' do
  'Server active!'
end

post '/encrypt' do
  content_type :json

  request_payload = JSON.parse(request.body.read)

  input_string = request_payload['input']
  input_key = request_payload['key']

  encrypted_text = caeser_cypher_encrypt(input_string, input_key)

  { output:encrypted_text }.to_json
end

post '/decrypt' do
  content_type :json

  request_payload = JSON.parse(request.body.read)

  input_string = request_payload['input']
  input_key = request_payload['key']

  decrypted_text = caeser_cypher_decrypt(input_string, input_key)
  { output: decrypted_text }.to_json
end

configure { set :server, :puma }