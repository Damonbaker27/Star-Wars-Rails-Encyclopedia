class HomeController < ApplicationController
  def index
    @characters = Character.all
    @homeworlds = Homeworld.all
    @films = Film.all
  end
end
