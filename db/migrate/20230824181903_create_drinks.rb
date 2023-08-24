class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.references :cafe, null: false, foreign_key: true
      t.boolean :dairy_substitute
      t.float :price

      t.timestamps
    end
  end
end
