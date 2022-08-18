class AddProductIdToProductUrl < ActiveRecord::Migration[7.0]
  def change
    add_column :product_urls, :product_id, :integer, index: true
  end
end
