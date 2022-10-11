class CharactersController < ApplicationController
  def index
    @characters = Character.all.page(params[:page])
  end

  def show
    @character = Character.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"

    @characters = Character.where("name LIKE ?", wildcard_search)
  end
end
