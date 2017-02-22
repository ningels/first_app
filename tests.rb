require 'rubygems'
require 'bundler/setup'
ENV['RACK_ENV'] = 'test'

require_relative 'first_app'
require 'test/unit'
require 'rack/test'
require 'faker'


class FirstAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_the_index
    get '/'
    assert last_response.ok?
    assert_equal 'Well, howdy partner', last_response.body
  end

  def test_names_page
    name = Faker::Name.first_name.capitalize
    get name
    assert last_response.ok?
    assert_equal   "Well, hello there #{name}!!", last_response.body
  end

  def test_lipsums_page
    get '/lorem/standard'
    assert last_response.ok?
    assert_equal "This is standard lipsum\n\n", last_response.body
    puts "last response.body: #{last_response.body}"
  end


end
