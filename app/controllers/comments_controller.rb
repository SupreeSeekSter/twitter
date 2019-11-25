class CommentsController < ApplicationController
  def index
  end

  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = tweet.comments.create(comment_params)

    if comment.errors.present?
      raise comment.errors.inspect
    end
    puts "#{comment.errors.inspect}"
    redirect_to root_path
  end

  private
  def comment_params
    puts "#{params.require(:comment).permit(:body).inspect}"
    params.require(:comment).permit(:body)
  end
end
