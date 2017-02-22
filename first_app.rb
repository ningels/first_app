require 'sinatra'

get "/:name" do
  "Well, hello there #{params['name'].capitalize}!!"
end

get "/lorem/standard" do
  "This is standard lipsum\n\n"
end

get "/" do
  "Well, howdy partner"
end
