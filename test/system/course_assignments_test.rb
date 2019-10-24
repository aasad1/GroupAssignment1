require "application_system_test_case"

class CourseAssignmentsTest < ApplicationSystemTestCase
  setup do
    @course_assignment = course_assignments(:one)
  end

  test "visiting the index" do
    visit course_assignments_url
    assert_selector "h1", text: "Course Assignments"
  end

  test "creating a Course assignment" do
    visit course_assignments_url
    click_on "New Course Assignment"

    fill_in "Course", with: @course_assignment.course_id
    fill_in "Professor", with: @course_assignment.professor_id
    fill_in "Section", with: @course_assignment.section
    click_on "Create Course assignment"

    assert_text "Course assignment was successfully created"
    click_on "Back"
  end

  test "updating a Course assignment" do
    visit course_assignments_url
    click_on "Edit", match: :first

    fill_in "Course", with: @course_assignment.course_id
    fill_in "Professor", with: @course_assignment.professor_id
    fill_in "Section", with: @course_assignment.section
    click_on "Update Course assignment"

    assert_text "Course assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Course assignment" do
    visit course_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course assignment was successfully destroyed"
  end
end
