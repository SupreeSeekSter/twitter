class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user.email
  end

  def current_user
    super
  end
end
