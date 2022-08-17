class CreateProductUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :product_urls do |t|
      t.string :body

      t.timestamps
    end
  end
end
