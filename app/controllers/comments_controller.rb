class CommentsController < ApplicationController
  def index
  end

  def create
    tweet = Tweet.all.find(params[:tweet_id])
    # comment = tweet.comments.create(comment_params)
    comment = tweet.comments.build(comment_params)
    comment.user_id = current_user.id
    comment.save

    puts comment.inspect

    if comment.errors.present?
      raise comment.errors.inspect
    end

    redirect_to root_path
  end

  private
  def comment_params
    puts "GGGGGGGG #{params.require(:comment).permit(:body,:user_id).inspect}"
    params.require(:comment).permit(:body)
  end
end
