class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :item_id
      t.string :item_type

      t.timestamps
    end
  end
end
