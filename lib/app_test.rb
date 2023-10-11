require 'http'
require 'dotenv'

Dotenv.load('.env1')


def login_openai()

api_key = ENV["CHATBOT_API_KEY"]
url = "https://api.openai.com/v1/models"
headers = {
  "Content-Type" => "application/json",
  "Authorization" => "Bearer #{api_key}"
}


response = HTTP.get(url, headers: headers)
puts response

end