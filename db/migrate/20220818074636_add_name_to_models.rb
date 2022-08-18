class AddNameToModels < ActiveRecord::Migration[7.0]
  def change
    add_column :models, :name, :string
  end
end
