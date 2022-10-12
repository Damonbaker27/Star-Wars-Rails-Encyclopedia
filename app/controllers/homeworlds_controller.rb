class HomeworldsController < ApplicationController
  def index
    @homeworlds = Homeworld.all.page(params[:page])
  end

  def show
    @homeworld = Homeworld.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"

    @homeworlds = Homeworld.where("name LIKE ?", wildcard_search)
  end
end
