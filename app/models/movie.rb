# Movie model is used deal with your movie related changes
class Movie < ApplicationRecord
  belongs_to :user
  validates :video_url, presence: true
end
