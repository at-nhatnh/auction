# == Schema Information
#
# Table name: auction_stores
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  campaign_id :integer
#  bid_price   :decimal(10, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AuctionStore < ApplicationRecord
  after_create_commit { AuctionStoreBroadcastJob.perform_later self }
  belongs_to :user
  belongs_to :campaign
end
