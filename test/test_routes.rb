ENV['RACK_ENV'] = 'test'

require_relative '../webserver/routes.rb'
require 'test/unit'
require 'rack/test'

class RoutesTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_get
    get '/user'
    assert last_response.ok?
  end

  def test_insert
    post '/user', :id => 90, :name => "unit_test_insert", :balance => 30000
    assert last_response.ok?
    assert_equal "", last_response.body
  end

  def test_update
    put '/user', :id => 90, :name => "unit_test_update", :balance => 30000
    assert last_response.ok?
    assert_equal "", last_response.body
  end

  def test_delete
    delete '/user', :id => 90
    assert last_response.ok?
    assert_equal "", last_response.body
  end
end