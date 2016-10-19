class ChangeColumnTimeToCampaigns < ActiveRecord::Migration[5.0]
  def change
    change_column(:campaigns, :time, :integer)
  end
end
