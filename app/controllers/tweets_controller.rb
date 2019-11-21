class TweetsController < ApplicationController

  def create
    puts("Creating new tweet")
    @user = current_user.tweets.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:context)
  end
end
