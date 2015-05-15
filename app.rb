require 'sinatra'
require "sinatra/activerecord"
require 'json'

# set :database_file, "config/database.yml"

get '/' do
  erb :index
end

get '/.json' do
  content_type :json
  { unemployed: 5, dead: 7 }.to_json
end

