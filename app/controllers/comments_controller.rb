class CommentsController < ApplicationController
  def index

  end

  def create
    puts "id is #{params[:id]}"
    @user = Tweet.find(params[:id]).comments.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
