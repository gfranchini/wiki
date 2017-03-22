require "sinatra"

set(:bind, '0.0.0.0')

def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

get("/") do
  erb(:welcome) #pulls the welcome.erb file from the views directory
end

get("/:title") do
  @title = params[:title]
  @content = page_content(@title)
  erb(:show)
end
