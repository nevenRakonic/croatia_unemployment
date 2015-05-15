require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './models'

# set :database_file, "config/database.yml"

get '/' do
  erb :index
end

get '/.json' do
  content_type :json
  UnemploymentData.all.to_json
end

