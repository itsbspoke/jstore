class CreateProductOfferings < ActiveRecord::Migration
  def change
    create_table :product_offerings do |t|
      t.integer :membership_id
      t.integer :product_id

      t.timestamps
    end
  end
end
