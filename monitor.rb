require 'faraday'

services = [
    "https://google.com",
    "https://github.com",
    "https://stripe.com",
    "https://this-is-a-fake-site-123.com"
]

puts "--- PulseCheck Results ---"

services.each do |url|
    begin
        response = Faraday.get(url)
        puts "[UP] #{url} - Status: #{response.status}"
    rescue
        puts "[DOWN] #{url} - Could not connect"
    end
end