require 'sinatra'
require 'project1'
require 'logger'

set :pr1, Project1.new
set :logger, Logger.new(STDOUT)

get '/user' do
  settings.pr1.getUser.join(",")
end

post '/user' do
  id = params[:id]
  name = params[:name]
  balance = params[:balance]


  settings.pr1.insertUser(id,name,balance)
end

put '/user' do
  id = params[:id]
  name = params[:name]
  balance = params[:balance]

  settings.pr1.updateUser(id,name,balance)
end

delete '/user' do
  id = params[:id]

  settings.pr1.deleteUser(id)
end