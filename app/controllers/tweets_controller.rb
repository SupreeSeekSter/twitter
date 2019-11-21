class TweetsController < ApplicationController

  def create
    @tweet = current_user.tweets.create(tweet_params)
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:context)
  end
end
