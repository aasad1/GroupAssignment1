class Course < ApplicationRecord
    has_many :professors, through: :course_assignments
end
