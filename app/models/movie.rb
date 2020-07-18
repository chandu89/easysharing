# Movie model is used deal with your movie related changes
class Movie < ApplicationRecord
  belongs_to :user
  validates :video_url, presence: true
  validates :video_url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
