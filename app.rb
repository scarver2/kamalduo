# frozen_string_literal: true

require 'sinatra/base'

# The entry point for the application
class App < Sinatra::Base
  get '/' do
    'Howdy World!'
  end

  get '/healthz' do
    'OK'
  end
end
