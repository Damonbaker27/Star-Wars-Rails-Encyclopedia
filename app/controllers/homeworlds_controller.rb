class HomeworldsController < ApplicationController
  def index
    @homeworlds = Homeworld.all.page(params[:page])
  end

  def show
    @homeworld = Homeworld.find(params[:id])
  end
end
