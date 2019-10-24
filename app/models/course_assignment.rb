class CourseAssignment < ApplicationRecord
  belongs_to :professor
  belongs_to :course
end
