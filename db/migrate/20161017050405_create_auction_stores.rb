class CreateAuctionStores < ActiveRecord::Migration[5.0]
  def change
    create_table :auction_stores do |t|
      t.references :user, foreign_key: true
      t.references :campaign, foreign_key: true
      t.decimal :bid_price

      t.timestamps
    end
  end
end
