require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
      visit home_url
      assert_selector "h1", text: "Welcome to Stupid Coach"
  end

  test "User saying he's going to work" do
    visit home_url
    fill_in "question", with: "I am going to work"
    click_on "Ask!"
    assert_text "Great!"
  end

  test "User ask a question with ?" do
    visit home_url
    fill_in "question", with: "...?"
    click_on "Ask!"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "User say anything else than a question or going to work" do
    visit home_url
    fill_in "question", with: "whatever you want"
    click_on "Ask!"
    assert_text "I don't care, get dressed and go to work!"
  end
end
