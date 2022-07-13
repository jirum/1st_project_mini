class AddImageToUrls < ActiveRecord::Migration[6.1]
  def change
    add_column :urls, :image, :string
  end
end
