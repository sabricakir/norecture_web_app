class AddImageUrlToProductUrls < ActiveRecord::Migration[7.0]
  def change
    add_column :product_urls, :image_url, :string
  end
end
