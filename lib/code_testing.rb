require 'http'
require 'json'
require 'dotenv'

Dotenv.load('.env1')

api_key = ENV["CHATBOT_API_KEY"]
url = "https://api.openai.com/v1/engines/text-babbage-001/completions"

headers = {
  "Content-Type" => "application/json",
  "Authorization" => "Bearer #{api_key}"
}

data = {
  "prompt" => "5 goûts de glace sorbet",
  "max_tokens" => 100,
  "temperature" => 0.7
}

response = HTTP.post(url, headers: headers, body: data.to_json)
response_body = JSON.parse(response.body.to_s)
response_string = response_body['choices'][0]['text'].strip

puts "Voici 5 parfums de glace sorbet :"
puts response_string