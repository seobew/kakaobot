require 'test_helper'

class ChatControllerTest < ActionDispatch::IntegrationTest
  test "should get keyboard_init" do
    get chat_keyboard_init_url
    assert_response :success
  end

  test "should get chat_control" do
    get chat_chat_control_url
    assert_response :success
  end

end
