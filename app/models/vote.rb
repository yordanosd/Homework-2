class Vote < ApplicationRecordjj
  belongs_to :photo

  validates :photo_id, presence: true

end
