require 'sinatra'
require 'active_record'
require 'pry'
require 'sqlite3'
require_relative 'ipsum'
# note, I had a models directory for the db but sqlite3 was making an empty one in the current directory
# Chris helped, I would have needed to do something like:  database: 'model/w4d3.sqlite3


ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'w4d3.sqlite3' )


get "/:name" do
  "Well, hello there #{params['name'].capitalize}!!"
end

get "/lorem/standard" do
  "This is standard lipsum\n\n"
end

get "/lorem/:type" do
# binding.pry
#   puts "in my loop with params: #{params['type']}"
  table_entry = Ipsum.find_by(identifier: params['type'])
  if table_entry
    table_entry.paragraph
  else
    status 404
  end

end


get "/" do
  "Well, howdy partner"
end
