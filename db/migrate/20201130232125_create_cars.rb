class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.float :rating
      t.text :description
      t.string :image
    end
  end
end
