class Photo < ApplicationRecord
  belongs_to :closet

  validates :photo_url, presence: true
  # validates :closet_id, :presence => true, :if => :photo_belongs_to_closet?

  # belongs_to :imageable, :polymorphic => true
  # has_many :categories

  def photo_belongs_to_closet?(closet_id, photo_id)

  end
end
