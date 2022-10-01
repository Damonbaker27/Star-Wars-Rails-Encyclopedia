class RaceController < ApplicationController
  def index
    @race = Race.all
  end
end
