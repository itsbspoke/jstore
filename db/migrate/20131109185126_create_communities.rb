class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
