class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.decimal :price
      t.text :description
      t.hstore :properties

      t.timestamps
    end
    add_index :products, :properties
  end
end
