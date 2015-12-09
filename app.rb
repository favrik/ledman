require 'rubygems'
require 'bundler'
require 'rubyserial'

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

    get '/on' do
      serialport_write '1'
      redirect '/'
    end

    get '/off' do
      serialport_write '0'
      redirect '/'
    end

    private

    def serialport_write(data)
      serialport = Serial.new '/dev/ttyACM1'
      serialport.write data
    end
  end
end
