class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def destroy
    
    @group.destroy
    flash[:alert] = "Group deleted"
    redirect_to account_posts_path
  end

end
