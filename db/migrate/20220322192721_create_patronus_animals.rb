class CreatePatronusAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :patronus_animals do |t|
      t.string :animal
      t.timestamps null: false
    end
  end
end
