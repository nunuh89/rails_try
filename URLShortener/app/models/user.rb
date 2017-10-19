class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { message: "email is not unique" }

  has_many :submitted_urls,
  class_name: :ShortenedUrl,
  primary_key: :id,
  foreign_key: :user_id

  has_many :visits,
  class_name: :Visit,
  primary_key: :id,
  foreign_key: :user_id

  # visitors and visited_urls associations on ShortenedUrl and User
  has_many :visited_urls, Proc.new { distinct }, through: :visits, source: :shortened_url


end
