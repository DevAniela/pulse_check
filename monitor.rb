require 'faraday'
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

services = [
    "https://google.com",
    "https://github.com",
    "https://stripe.com",
]

get '/status' do
    content_type :json

    results = services.map do |url|
        start_time = Time.now
        begin
            response = Faraday.get(url)
            latency = ((Time.now - start_time) * 1000).to_i
            { url: url, status: "UP", code: response.status, latency_ms: latency }
        rescue
            { url: url, status: "DOWN", code: nil, latency_ms: nil }
        end
    end
    results.to_json
end