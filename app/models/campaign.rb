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

class Campaign < ApplicationRecord
  belongs_to :product
  belongs_to :user
end
