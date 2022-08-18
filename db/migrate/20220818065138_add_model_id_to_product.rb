class AddModelIdToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :model_id, :integer, index: true
  end
end
