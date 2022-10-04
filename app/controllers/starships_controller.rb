class StarshipsController < ApplicationController
  def index
    @starships = Starship.all.page(params[:page])
  end

  def show
    @starship = Starship.find(params[:id])
  end
end
