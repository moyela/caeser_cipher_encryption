# Caeser Cipher Encryptor

This program was developed to introduce basic software encryption concepts to children or students
learning basic comupter science. It accepts an input string and an encryption key and shifts each character along the index positions of the 26 English alphabet letters and returns an output string that has been character-shifted in accordance with the key. 

For example, an encryption with input string: "Ant" and encryption key: 3 returns "Dqw."

This algorithm was named after Roman general Julius Caeser who reportedly used an implementation of it to secure classified correspondence. It runs on Ruby 3.2.2 and Sinatra with a Puma server.

## How to run locally

To run this program locally, download this repo and install Ruby. You can find installation instructions at [the offical site](https://www.ruby-lang.org/en/). 

Once you have Ruby installed, open your terminal and navigate to the 'local' directory.

Run the encryption program with:
```sh
$ ruby encryptor.rb
```

Run the decryption program with:
```sh
$ ruby decryptor.rb
```

Run the encryption cracker program with:
```sh
$ ruby cracker.rb
```

## How to deploy as a microservice

You can create a fork of this repository and add it as a source in your hosting provider or run a local server by downloading this repo. Install Ruby and run the following commands from the root of of the repo in your terminal. Use these same commands to deploy to a PAAS service like Render.

Build command: 
```sh
$ bundle install
```

Start command:
```sh
$ bundle exec ruby start.rb
```
#### Service endpoints

Once the service is live, access the endpoints at:
<dl>
  <dt>Encryption:</dt>
  <dd>{YOUR_URL}/encrypt</dd>
  <dt>Decryption:</dt>
  <dd>{YOUR_URL}/decrypt</dd>
</dl>

To encrypt an input you would make a GET request to *https://www.yoururl.com/encrypt* with your JSON body containing your input and encryption key:

```json
{
    "input": "Ug vium qa Igzi Abizz ivl Q'u vwb i bmzzwzqab",
    "key": 8
}
```

And the response body would contain:

```json
{
    "output": "My name is Ayra Starr and I'm not a terrorist"
}
```

The request structure is the same to decrypt an input.
