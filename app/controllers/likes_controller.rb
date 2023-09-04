class LikesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        current_user.like!(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        current_user.likes.where(post_id: params[:post_id]).delete_all
    end
end