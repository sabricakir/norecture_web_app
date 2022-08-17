class CreateMannequins < ActiveRecord::Migration[7.0]
  def change
    create_table :mannequins do |t|
      t.integer :waist
      t.integer :shoulder
      t.integer :chest
      t.integer :length
      t.integer :hip

      t.timestamps
    end
  end
end
