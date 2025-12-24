# PulseCheck: Service Health Monitor

A lightweight Ruby-based service that monitors the health and latency of web services.

## Key Features

- **Automated Monitoring:** Pings a list of services to check for availability (HTTP 200/301/etc).
- **Latency Aggregation:** Measures and reports response times in milliseconds.
- **JSON API:** Exposes status data via a RESTful endpoint for service discovery.
- **Automated Testing:** Verified with RSpec and Rack-Test to ensure reliability.

## Tech Stack

- **Language:** Ruby
- **Framework:** Sinatra
- **Networking:** Faraday
- **Testing:** RSpec

## How to Run

1. Install dependencies: `bundle install`
2. Start the server: `ruby monitor.rb`
3. Access the API: `http://localhost:4567/status`

## Running Tests

Execute `rspec` in the root directory to run automated test suite.
