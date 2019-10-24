require 'test_helper'

class CourseAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_assignment = course_assignments(:one)
  end

  test "should get index" do
    get course_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_course_assignment_url
    assert_response :success
  end

  test "should create course_assignment" do
    assert_difference('CourseAssignment.count') do
      post course_assignments_url, params: { course_assignment: { course_id: @course_assignment.course_id, professor_id: @course_assignment.professor_id, section: @course_assignment.section } }
    end

    assert_redirected_to course_assignment_url(CourseAssignment.last)
  end

  test "should show course_assignment" do
    get course_assignment_url(@course_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_assignment_url(@course_assignment)
    assert_response :success
  end

  test "should update course_assignment" do
    patch course_assignment_url(@course_assignment), params: { course_assignment: { course_id: @course_assignment.course_id, professor_id: @course_assignment.professor_id, section: @course_assignment.section } }
    assert_redirected_to course_assignment_url(@course_assignment)
  end

  test "should destroy course_assignment" do
    assert_difference('CourseAssignment.count', -1) do
      delete course_assignment_url(@course_assignment)
    end

    assert_redirected_to course_assignments_url
  end
end
