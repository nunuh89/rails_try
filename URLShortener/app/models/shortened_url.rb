require 'securerandom'

class ShortenedUrl < ApplicationRecord
  validates :user_id, presence: true
  validates :long_url, presence: true
  validates :short_url, presence: true, uniqueness: true

  def self.generate_short_url(user_obj, long_url)
    ShortenedUrl.create!(user_id: user_obj.id, long_url: long_url, short_url: SecureRandom.urlsafe_base64(16))
  end

  belongs_to :submitter,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id

  has_many :visits,
  class_name: :Visit,
  primary_key: :id,
  foreign_key: :shortened_url_id
  # visitors and visited_urls associations on ShortenedUrl and User

  has_many :visitors, Proc.new { distinct }, through: :visits, source: :user

  def num_of_clicks
      self.visits.count
  end

  def num_uniques
      
  end

  def num_recent_uniques
  end

end
