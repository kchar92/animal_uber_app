class Api::AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render 'index.json.jb'
  end
  def create
    @animal = Animal.new(
      species: params[:species],
      color: params[:color],
      favorites: params[:favorites]
    )
    @animal.save
    render 'show.json.jb'
  end
end
