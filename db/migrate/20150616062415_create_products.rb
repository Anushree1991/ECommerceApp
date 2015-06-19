class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price
	  add_foreign_key :products, :categories
      t.timestamps
    end
  end
end
