require 'sinatra'
require 'json'

set :server, :thin
set :threaded, true

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Content-Type'] = 'application/json'
end

get '/random' do
  sleep(3)
  random_number = rand(0..1000)
  return { random_number: random_number }.to_json
end


get '/random_v1' do
  sleep(3)
  random_number = rand(0..1000)
  return { random_number: random_number }.to_json
end



get '/random_v2' do
  sleep(3)
  random_number = rand(0..1000)
  return { random_number: random_number }.to_json
end

