class PostsController < ApplicationController


def new
	@post = Post.new
end

def create
	@post = Post.new(post_params)
	@post.user_id = current_user.id
	if @post.save
		redirect_to '/homes' , notice: "you have posted a new post"
	else
		redirect_to '/homes', notice: "error occur while posting"
end
end


private
def post_params
params.require('post').permit(:title, :body)
end


end
