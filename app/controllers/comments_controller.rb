class CommentsController < ApplicationController
  def index
  end

  def create
    puts "LONGG id is #{params[:id]}  sksksk  #{params[:comment][:body]}"
    Tweet.find(params[:id]).comments.create(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
