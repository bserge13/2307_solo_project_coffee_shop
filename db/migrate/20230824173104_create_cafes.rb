class CreateCafes < ActiveRecord::Migration[7.0]
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :city
      t.integer :rating
      t.boolean :rewards_program

      t.timestamps
    end
  end
end
