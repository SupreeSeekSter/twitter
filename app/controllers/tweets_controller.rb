class TweetsController < ApplicationController

  def create
    @tweet = current_user.tweets.find[:id]
    # @tweets.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:context)
  end
end
