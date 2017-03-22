require "sinatra"

set(:bind, '0.0.0.0')

get("/") do
  "<h1>Welcome to our Wiki!</h1>"
end
