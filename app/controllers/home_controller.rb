class HomeController < ApplicationController
  def index
    @characters = find
  end
end
