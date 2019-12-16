require "application_system_test_case"

class ObstaclesTest < ApplicationSystemTestCase
  setup do
    @obstacle = obstacles(:one)
  end

  test "visiting the index" do
    visit obstacles_url
    assert_selector "h1", text: "Obstacles"
  end

  test "creating a Obstacle" do
    visit obstacles_url
    click_on "New Obstacle"

    fill_in "Content", with: @obstacle.content
    click_on "Create Obstacle"

    assert_text "Obstacle was successfully created"
    click_on "Back"
  end

  test "updating a Obstacle" do
    visit obstacles_url
    click_on "Edit", match: :first

    fill_in "Content", with: @obstacle.content
    click_on "Update Obstacle"

    assert_text "Obstacle was successfully updated"
    click_on "Back"
  end

  test "destroying a Obstacle" do
    visit obstacles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Obstacle was successfully destroyed"
  end
end
