json.extract! course, :id, :name, :course_number, :created_at, :updated_at
json.url course_url(course, format: :json)
