Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "places"
  resources "posts"
  # Defines the root path route ("/")
  # rails generate controller places
  # rails generate controller posts
  # get("/", { :controller => "articles", :action => "index" })
  get("/", { :controller => "places", :action => "index" })
end
