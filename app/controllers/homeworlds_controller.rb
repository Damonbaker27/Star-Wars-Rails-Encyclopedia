class HomeworldsController < ApplicationController
  def index
    @homeworlds = Homeworld.all
  end
end
