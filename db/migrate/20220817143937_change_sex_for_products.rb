class ChangeSexForProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :sex, :gender
  end
end
