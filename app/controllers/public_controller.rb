class PublicController < ApplicationController
  def index
    @user = User.find(params[:id])
    @ideas = @user.ideas
    @qualities = @user.qualities
  end
end
