class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :description
      t.string :long_url
      t.string :short_url
      t.integer :clicked, default: 0
      t.belongs_to :user
      t.timestamps
    end
  end
end
