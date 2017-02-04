class Account::PostsController < ApplicationController
    before_action :authenticate_user!
    def index
        @posts = current_user.posts
    end

    def edit
        @post = current_user.posts.find(param[:id])
    end

    def destroy
        @post.destroy
        flash[:alert] = 'Group deleted'
        redirect_to groups_path
    end
end
