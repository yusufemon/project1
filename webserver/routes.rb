require 'sinatra'
require 'project1'

pr1 = Project1.new

get '/user' do
  pr1.getUser.join(",")
end

post '/user' do
  id = params[:id]
  name = params[:name]
  balance = params[:balance]

  pr1.insertUser(id,name,balance)
end

put '/user' do
  id = params[:id]
  name = params[:name]
  balance = params[:balance]

  pr1.updateUser(id,name,balance)
end

delete '/user' do
  id = params[:id]

  pr1.deleteUser(id)
end