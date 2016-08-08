class Closet < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  has_many :photos
  # has_many :categories
  # has_many :photos, :as => :imageable
end
