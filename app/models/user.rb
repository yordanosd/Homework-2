class User < ApplicationRecord
  # validates :uid, presense: true, uniqueness: true
  has_many :closets
  has_many :photos, :through => :closets
  # has_many :photos, :as => :imageable

end
