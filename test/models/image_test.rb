# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  image_url  :string(255)
#  image_id   :integer
#  image_type :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
