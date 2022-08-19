class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :length
      t.integer :waist
      t.integer :shoulder
      t.integer :chest
      t.integer :hip

      t.timestamps
    end
  end
end
