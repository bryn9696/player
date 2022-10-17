require "application_system_test_case"

class SportsmenTest < ApplicationSystemTestCase
  setup do
    @sportsman = sportsmen(:one)
  end

  test "visiting the index" do
    visit sportsmen_url
    assert_selector "h1", text: "Sportsmen"
  end

  test "should create sportsman" do
    visit sportsmen_url
    click_on "New sportsman"

    fill_in "Ball control", with: @sportsman.ball_control
    fill_in "Crossing", with: @sportsman.crossing
    fill_in "Dribbling", with: @sportsman.dribbling
    fill_in "Progress", with: @sportsman.progress
    fill_in "Running with the ball", with: @sportsman.running_with_the_ball
    fill_in "Shooting", with: @sportsman.shooting
    fill_in "Short passing", with: @sportsman.short_passing
    click_on "Create Sportsman"

    assert_text "Sportsman was successfully created"
    click_on "Back"
  end

  test "should update Sportsman" do
    visit sportsman_url(@sportsman)
    click_on "Edit this sportsman", match: :first

    fill_in "Ball control", with: @sportsman.ball_control
    fill_in "Crossing", with: @sportsman.crossing
    fill_in "Dribbling", with: @sportsman.dribbling
    fill_in "Progress", with: @sportsman.progress
    fill_in "Running with the ball", with: @sportsman.running_with_the_ball
    fill_in "Shooting", with: @sportsman.shooting
    fill_in "Short passing", with: @sportsman.short_passing
    click_on "Update Sportsman"

    assert_text "Sportsman was successfully updated"
    click_on "Back"
  end

  test "should destroy Sportsman" do
    visit sportsman_url(@sportsman)
    click_on "Destroy this sportsman", match: :first

    assert_text "Sportsman was successfully destroyed"
  end
end
