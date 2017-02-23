require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'w4d3.sqlite3' )


get "/:name" do
  "Well, hello there #{params['name'].capitalize}!!"
end

get "/lorem/standard" do
  "This is standard lipsum\n\n"
end


get "/" do
  "Well, howdy partner"
end
