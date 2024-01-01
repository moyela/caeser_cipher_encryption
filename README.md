# Caeser Cipher Encryptor

This program was developed to introduce basic software encryption concepts to children or students
learning basic comupter science. It accepts an input string and an encryption key and shifts each character along the index positions of the 26 English alphabet letters and returns an output string that has been character-shifted in accordance with the key. 

For example, an encryption with input string: "Ant" and encryption key: 3 returns "Dqw."

This algorithm was named after Roman general Julius Caeser who reportedly used an implementation of it to secure classified correspondence.

It runs on Ruby 3.2.2 and Sinatra, with a Puma server.

## How to run locally

To run this program locally, download the code with a local sample and install Ruby sinatra. 
You can find installation instructions at [the offical site](https://www.ruby-lang.org/en/)

Once you have Ruby installed, open your terminal and navigate to the 'local' directory.

Run the encryption program with:
```sh
$ ruby caeser_cipher_encryptor.rb
```

Run the decryption program with:
```sh
$ ruby caeser_cipher_decryptor.rb
```

Run the encryption cracker program with:
```sh
$ ruby caeser_cipher_cracker.rb
```

## How to deploy as a microservice

Create a fork of this repository and add it as a source in your hosting provider.

Build command: 
```sh
$ bundle install
```

Start command
```sh
$ bundle exec ruby start.rb
```
#### Service endpoints

After deploying the service, access the endpoints at:
<dl>
  <dt>Encryption</dt>
  <dd>{YOUR_URL}/encrypt</dd>
  <dt>Decryption</dt>
  <dd>{YOUR_URL}/decrypt</dd>
</dl>

To encrypt an input you would make a GET request to *https://www.yoururl.com/encrypt* with your JSON body containing:

```json
{
    "text": "Ug vium qa Igzi Abizz ivl Q'u vwb i bmzzwzqab",
    "key": 8
}
```

And the response body would contain:

```json
{
    "result": "My name is Ayra Starr and I'm not a terrorist"
}
```