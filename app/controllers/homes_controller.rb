class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @tweets = Tweet.all
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
end
