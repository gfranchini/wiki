require "sinatra"

set(:bind, '0.0.0.0')

get("/") do
  erb(:welcome) #pulls the welcome.erb file from the views directory
end
