

# create_table :enrollments do |t|
#   t.integer :course_id
#   t.integer :student_id
#
#   t.timestamps


# class CreateUsers < ActiveRecord::Migration[5.1]
#   def change
#     create_table :users do |t|
#       t.string :name
#
#       t.timestamps
#     end
#   end
# end

# class CreateCourses < ActiveRecord::Migration[5.1]
#   def change
#     create_table :courses do |t|
#       t.string :name
#       t.integer :prereq_id
#       t.integer :instructor_id
#
#       t.timestamps
#     end


class Enrollment < ApplicationRecord
  validates :student_id, uniqueness: { scope: :course_id }

  has_many :course,
    class_name: :Course,
    primary_key: :id,
    foreign_key: :course_id

  has_many :user,
    class_name: :User,
    primary_key: :id,
    foreign_key: :student_id
end
