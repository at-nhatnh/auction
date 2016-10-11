# == Schema Information
#
# Table name: campaigns
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
