class PostsController < ApplicationController

def index
    @post = Post.all
end
  
def show
    @post = Post.find_by({ "id" => params["id"] })
    @place = Place.find_by({ "id" => @place["place_id"] })
end

def new
    @post= Post.new
    @post.place_id = params["place_id"]
end
    
def create
    @post = Post.new
    @post["title"] = params["post"]["title"]
    @post["post_on"] = params["post"]["post_on"]
    @post["description"] = params["post"]["description"]
    @post.save
    redirect_to "/companies/#{@post["place_id"]}"
end

