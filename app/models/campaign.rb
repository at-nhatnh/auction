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

class Campaign < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :time, presence: true
end
