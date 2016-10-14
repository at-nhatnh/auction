class AddBeginPriceToCampaigns < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :begin_price, :decimal
  end
end
