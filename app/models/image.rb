class Image < ApplicationRecord
  belongs_to :image, polymorphic: :true
end
