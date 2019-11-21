class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user

    binding.pry()

    @tweets = current_user.tweets
  end

  def current_user
    super
  end

  def create

  end

  def new

  end
end
