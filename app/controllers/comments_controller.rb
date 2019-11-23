class CommentsController < ApplicationController
  def index
  end

  def create
    puts "LONGG id is #{params[:tweet_id]}  sksksk  #{params[:comment][:body]}"
    Tweet.find(params[:tweet_id]).comments.create(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
