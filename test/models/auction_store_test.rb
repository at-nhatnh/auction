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

require 'test_helper'

class AuctionStoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
