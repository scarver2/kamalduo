# frozen_string_literal: true

require 'sinatra/base'

# The entry point for the application
class App < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/healthz' do
    'ok'
  end
end
