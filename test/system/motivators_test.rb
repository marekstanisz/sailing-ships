require "application_system_test_case"

class MotivatorsTest < ApplicationSystemTestCase
  setup do
    @motivator = motivators(:one)
  end

  test "visiting the index" do
    visit motivators_url
    assert_selector "h1", text: "Motivators"
  end

  test "creating a Motivator" do
    visit motivators_url
    click_on "New Motivator"

    fill_in "Content", with: @motivator.content
    click_on "Create Motivator"

    assert_text "Motivator was successfully created"
    click_on "Back"
  end

  test "updating a Motivator" do
    visit motivators_url
    click_on "Edit", match: :first

    fill_in "Content", with: @motivator.content
    click_on "Update Motivator"

    assert_text "Motivator was successfully updated"
    click_on "Back"
  end

  test "destroying a Motivator" do
    visit motivators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motivator was successfully destroyed"
  end
end
