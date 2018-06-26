require 'sinatra'
require 'project1.rb'

get '/user' do
  Project1.getUser.join(",")
end

post '/user' do
  id = params[:id]
  name = params[:name]
  balance = params[:balance]

  Project1.insertUser(id,name,balance)
end

put '/user' do
  id = params[:id]
  name = params[:name]
  balance = params[:balance]

  Project1.updateUser(id,name,balance)
end

delete '/user' do
  id = params[:id]

  Project1.deleteUser(id)
end