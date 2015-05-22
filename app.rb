require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './models'

get '/' do
  erb :index
end

get '/.json' do
  content_type :json
  UnemploymentData.all.to_json
end

