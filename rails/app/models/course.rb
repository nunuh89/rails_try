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
#     endß

class Course < ApplicationRecord
  belongs_to :instructor,
  class_name: :User,
  primary_key: :id,
  foreign_key: :instructor_id

  belongs_to :prerequisite,
  class_name: :Course,
  primary_key: :id,
  foreign_key: :prereq_id

  has_many :enrollments,
  class_name: :Enrollment,
  primary_key: :id,
  foreign_key: :course_id

  has_many :enrolled_students, through: :enrollments, source: :user

end
