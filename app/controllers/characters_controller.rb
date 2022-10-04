class CharactersController < ApplicationController
  def index
    @characters = Character.all.page(params[:page])
  end

  def show
    @character = Character.find(params[:id])
  end
end
