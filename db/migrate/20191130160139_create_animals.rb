class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
