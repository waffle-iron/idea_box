class PublicController < ApplicationController
  def index
    @ideas = Idea.all
  end
end
