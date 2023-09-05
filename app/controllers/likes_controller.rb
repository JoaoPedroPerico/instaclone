class LikesController < ApplicationController
    def create
        if  params[:likeable_type] == 'Post'
            @likeable = Post.find(params[:post_id])
            current_user.like!(@likeable)
        end
    end

    def destroy
        if  params[:likeable_type] == 'Post'
            @likeable = Post.find(params[:post_id])
            Like.where(likeable_type: 'Post', likeable_id: @likeable.id, user_id: current_user.id).delete_all
        end
    end
end