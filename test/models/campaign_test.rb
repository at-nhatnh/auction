# == Schema Information
#
# Table name: campaigns
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  user_id     :integer
#  time        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  begin_price :decimal(10, )
#

require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
