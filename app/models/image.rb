# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  image_url  :string(255)
#  item_id    :integer
#  item_type  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :image, polymorphic: :true
end
