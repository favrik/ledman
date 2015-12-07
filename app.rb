require 'rubygems'
require 'bundler'

Bundler.require

module Ledman
  class App < Sinatra::Application
    configure do
      disable :method_override
      disable :static

      set :sessions,
          :httponly     => true,
          :secure       => production?,
          :expire_after => 31557600, # 1 year
          :secret       => ENV['SESSION_SECRET']
    end

    use Rack::Deflater

    get '/' do
      "#{['Hello', 'Hi', 'Hey', 'Yo'][rand(4)]} World!"
    end
  end
end
