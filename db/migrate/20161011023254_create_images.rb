class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :image_id
      t.string :image_type

      t.timestamps
    end
  end
end
