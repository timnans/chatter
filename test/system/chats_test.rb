require "application_system_test_case"

class ChatsTest < ApplicationSystemTestCase
  setup do
    @chat = chats(:one)
  end

  test "visiting the index" do
    visit chats_url
    assert_selector "h1", text: "Chats"
  end

  test "creating a Chat" do
    visit chats_url
    click_on "New Chat"

    fill_in "Message", with: @chat.message
    click_on "Create Chat"

    assert_text "Chat was successfully created"
    click_on "Back"
  end

  test "updating a Chat" do
    visit chats_url
    click_on "Edit", match: :first

    fill_in "Message", with: @chat.message
    click_on "Update Chat"

    assert_text "Chat was successfully updated"
    click_on "Back"
  end

  test "destroying a Chat" do
    visit chats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chat was successfully destroyed"
  end
end
