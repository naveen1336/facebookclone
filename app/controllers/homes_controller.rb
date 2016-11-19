class HomesController < ApplicationController


def index

@posts = current_user.posts
@post = Post.new
@friends = current_user.friends
end


end
