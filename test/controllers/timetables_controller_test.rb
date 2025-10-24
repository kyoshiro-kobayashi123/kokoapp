require "test_helper"

class TimetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get student" do
    get timetables_student_url
    assert_response :success
  end

  test "should get teacher" do
    get timetables_teacher_url
    assert_response :success
  end
end
