class HomeworldsController < ApplicationController
  def index
    @homeworlds = Homeworld.all
  end

  def show
    @homeworld = Homeworld.find(params[:id])
  end
end
