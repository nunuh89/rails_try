# In this phase of the project we want to code the functionality to track
# how many times a shortened URL has been visited. We also want to be able
#  to fetch all of the shortened urls a user has visited.
#
# To accomplish this, we'll need a Visit join table model. We'll use this
# join to link user visits to certain urls. We'll also add associations
# connecting Visit,User, and ShortenedUrl.
#
# Instructions
#
# First write the Visit join table model. Add appropriate indices and
# validations. Be sure to include timestamps on your Visit model. We'll
# need them later.
#
# Add a convenience factory method called Visit::record_visit!(user,
#   shortened_url) that will create a Visit object recording a visit from
#   a User to the given ShortenedUrl.
#
# Now write visitors and visited_urls associations on ShortenedUrl and User.
#  These associations will have to traverse associations in Visit. Define
#  appropriate associations in Visit; what kind of association can traverse
#   other associations?


# class CreateVisits < ActiveRecord::Migration[5.1]
#   def change
#     create_table :visits do |t|
#       t.integer :shortened_url_id, null: false
#       t.integer :user_id, null: false
#       t.timestamps
#     end
#   end
# end
class Visit < ApplicationRecord
  validates :shortened_url_id, presence: true
  validates :user_id, presence: true

  belongs_to :shortened_url,
  class_name: :ShortenedUrl,
  primary_key: :id,
  foreign_key: :shortened_url_id

  belongs_to :user,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id


end
