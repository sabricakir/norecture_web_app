class AddProductTypeIdToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :product_type_id, :integer, index: true
  end
end
