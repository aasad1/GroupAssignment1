class Professor < ApplicationRecord
    has_many :offices
    has_many :courses, through: :course_assignments
end
