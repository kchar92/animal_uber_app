class Api::AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render 'index.json.jb'
  end
end
