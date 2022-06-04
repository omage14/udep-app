require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "City", with: @student.city
    fill_in "Email", with: @student.email
    fill_in "External number", with: @student.external_number
    fill_in "Internal number", with: @student.internal_number
    fill_in "Last name", with: @student.last_name
    fill_in "Maiden name", with: @student.maiden_name
    fill_in "Mobile phone", with: @student.mobile_phone
    fill_in "Name", with: @student.name
    fill_in "Phone", with: @student.phone
    fill_in "State", with: @student.state
    fill_in "Street", with: @student.street
    fill_in "Zip code", with: @student.zip_code
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "City", with: @student.city
    fill_in "Email", with: @student.email
    fill_in "External number", with: @student.external_number
    fill_in "Internal number", with: @student.internal_number
    fill_in "Last name", with: @student.last_name
    fill_in "Maiden name", with: @student.maiden_name
    fill_in "Mobile phone", with: @student.mobile_phone
    fill_in "Name", with: @student.name
    fill_in "Phone", with: @student.phone
    fill_in "State", with: @student.state
    fill_in "Street", with: @student.street
    fill_in "Zip code", with: @student.zip_code
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
