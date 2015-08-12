class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.string :current_user
      t.date :current_date

      t.timestamps
    end
  end
end
