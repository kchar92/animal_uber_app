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
  def show
    @animal = Animal.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def update
    @animal = Animal.find_by(id: params[:id])
    @animal.species = params[:species] || @animal.species
    @animal.color = params[:color] || @animal.color
    @animal.favorites = params[:favorites] || @animal.favorites
    @animal.save
    render 'show.json.jb'
  end
end
