class BlogsController < ApplicationController
  def index
  	if params[:sort]
  		@cat = Category.find_by(name: params[:sort])
  		@blogs = @cat.blogs.all
  	else
  		@blogs = Blog.all
  	end
  end
end
