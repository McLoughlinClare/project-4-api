require 'test_helper'

class TeacherAuthenticationsControllerTest < ActionDispatch::IntegrationTest
  test "should get teacher_register" do
    get teacher_authentications_teacher_register_url
    assert_response :success
  end

  test "should get teacher_login" do
    get teacher_authentications_teacher_login_url
    assert_response :success
  end

end
