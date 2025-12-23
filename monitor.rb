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
        start_time = Time.now
        response = Faraday.get(url)
        end_time = Time.now

        latency = ((end_time - start_time) * 1000).to_i

        puts "[UP] #{url} - Status: #{response.status} - Latency: #{latency} ms"
    rescue
        puts "[DOWN] #{url} - Could not connect"
    end
end