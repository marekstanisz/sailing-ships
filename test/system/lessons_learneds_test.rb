require "application_system_test_case"

class LessonsLearnedsTest < ApplicationSystemTestCase
  setup do
    @lessons_learned = lessons_learneds(:one)
  end

  test "visiting the index" do
    visit lessons_learneds_url
    assert_selector "h1", text: "Lessons Learneds"
  end

  test "creating a Lessons learned" do
    visit lessons_learneds_url
    click_on "New Lessons Learned"

    fill_in "Content", with: @lessons_learned.content
    click_on "Create Lessons learned"

    assert_text "Lessons learned was successfully created"
    click_on "Back"
  end

  test "updating a Lessons learned" do
    visit lessons_learneds_url
    click_on "Edit", match: :first

    fill_in "Content", with: @lessons_learned.content
    click_on "Update Lessons learned"

    assert_text "Lessons learned was successfully updated"
    click_on "Back"
  end

  test "destroying a Lessons learned" do
    visit lessons_learneds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lessons learned was successfully destroyed"
  end
end
