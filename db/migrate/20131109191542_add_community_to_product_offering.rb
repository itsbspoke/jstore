class AddCommunityToProductOffering < ActiveRecord::Migration
  def change
    add_column :product_offerings, :community_id, :integer
  end
end
