require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat = chats(:one)
  end

  test "should get index" do
    get chats_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_url
    assert_response :success
  end

  test "should create chat" do
    assert_difference('Chat.count') do
      post chats_url, params: { chat: { message: @chat.message } }
    end

    assert_redirected_to chat_url(Chat.last)
  end

  test "should show chat" do
    get chat_url(@chat)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_url(@chat)
    assert_response :success
  end

  test "should update chat" do
    patch chat_url(@chat), params: { chat: { message: @chat.message } }
    assert_redirected_to chat_url(@chat)
  end

  test "should destroy chat" do
    assert_difference('Chat.count', -1) do
      delete chat_url(@chat)
    end

    assert_redirected_to chats_url
  end
end
