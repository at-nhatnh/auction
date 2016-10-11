# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text(65535)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :user
  has_many :images, as: :image, dependent: :destroy
  has_many :campaign, dependent: :destroy

  accepts_nested_attributes_for :images

  DEFAULT_UPDATABLE_ATTRIBUTES = [:title, :description,
                                  images_attributes: [:id, :image_url]]

end
