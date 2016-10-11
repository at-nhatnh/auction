class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
