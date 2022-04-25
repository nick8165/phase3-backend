class AddImageToPatronusAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :patronus_animals, :image, :string
  end
end
