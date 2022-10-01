class HomeController < ApplicationController
  def index
    @characters = Character.all
    @homeworlds = Homeworld.all
  end
end
