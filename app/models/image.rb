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

class Image < ApplicationRecord
  belongs_to :image, polymorphic: :true
  mount_uploader :image_url, ImageUploader
end
