require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './models'

get '/' do
  erb :index
end

get '/unemployed.json' do
  content_type :json
  UnemploymentData.select("fetch_time, unemployed_people").to_json
end

get '/openings.json' do
  content_type :json
  UnemploymentData.select("fetch_time, job_openings").to_json
end

