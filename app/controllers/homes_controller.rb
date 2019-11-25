class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @users = User.all
    @tweets = Tweet.all.order(created_at: :desc)
    @comments = Comment.all

    @new_tweet = Tweet.new
    @new_comment = Comment.new
  end

  def current_user
    super
  end

  def create
    # @new_tweet = Tweet.new
  end

  def new
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
