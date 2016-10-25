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
  belongs_to :user
  belongs_to :campaign

  validate :bid_price_must_than_big_price, on: :create
  validate :time_over

  def bid_price_must_than_big_price
    last_auction_store = AuctionStore.where(campaign: self.campaign).last
    if last_auction_store.present? && bid_price < last_auction_store.bid_price
      errors.add(:bid_price, "more than price")
    end
  end

  def time_over
    if self.campaign.time < DateTime.current
      errors.add(:time, 'time over')
    end
  end
  after_create_commit { AuctionStoreBroadcastJob.perform_later self }
end
