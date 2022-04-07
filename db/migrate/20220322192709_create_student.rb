class CreateStudent < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.integer :house_id
      t.integer :patronus_animal_id
      t.timestamps null: false
    end
  end
end
