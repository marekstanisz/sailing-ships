require "application_system_test_case"

class FuckupsTest < ApplicationSystemTestCase
  setup do
    @fuckup = fuckups(:one)
  end

  test "visiting the index" do
    visit fuckups_url
    assert_selector "h1", text: "Fuckups"
  end

  test "creating a Fuckup" do
    visit fuckups_url
    click_on "New Fuckup"

    fill_in "Content", with: @fuckup.content
    click_on "Create Fuckup"

    assert_text "Fuckup was successfully created"
    click_on "Back"
  end

  test "updating a Fuckup" do
    visit fuckups_url
    click_on "Edit", match: :first

    fill_in "Content", with: @fuckup.content
    click_on "Update Fuckup"

    assert_text "Fuckup was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuckup" do
    visit fuckups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuckup was successfully destroyed"
  end
end
