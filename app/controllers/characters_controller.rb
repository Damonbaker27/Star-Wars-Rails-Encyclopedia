class CharactersController < ApplicationController
  def Index
    @characters = Character.all
  end
end
