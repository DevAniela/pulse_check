require 'rack/test'
require 'rspec'
require_relative '../monitor'

describe 'PulseCheck API' do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    it "returns a successful status response" do
        get '/status'
        expect(last_response).to be_ok
    end

    it "returns data in JSON format" do
        get '/status'
        expect(last_response.content_type).to eq('application/json')
    end
end