class ChangeAnimalDescriptionToFavorites < ActiveRecord::Migration[6.0]
  def change
    rename_column :animals, :description, :favorites
  end
end
