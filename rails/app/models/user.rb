
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

# Add associations for enrollments and enrolled_courses.
# This might take a little bit of thinking.
#
# You will know you have succeeded when you can
# execute User.first.enrollments and User.first.enrolled_courses
# in the rails console. These commands should return the
# user's enrollments and enrolled courses.
class User < ApplicationRecord
end
