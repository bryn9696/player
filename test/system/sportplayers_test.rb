require "application_system_test_case"

class SportplayersTest < ApplicationSystemTestCase
  setup do
    @sportplayer = sportplayers(:one)
  end

  test "visiting the index" do
    visit sportplayers_url
    assert_selector "h1", text: "Sportplayers"
  end

  test "should create sportplayer" do
    visit sportplayers_url
    click_on "New sportplayer"

    fill_in "Age", with: @sportplayer.age
    fill_in "Ball control", with: @sportplayer.ball_control
    fill_in "Crossing", with: @sportplayer.crossing
    fill_in "Dribbling", with: @sportplayer.dribbling
    fill_in "First name", with: @sportplayer.first_name
    fill_in "Last name", with: @sportplayer.last_name
    fill_in "Progress", with: @sportplayer.progress
    fill_in "Running with the ball", with: @sportplayer.running_with_the_ball
    fill_in "Shooting", with: @sportplayer.shooting
    fill_in "Short passing", with: @sportplayer.short_passing
    click_on "Create Sportplayer"

    assert_text "Sportplayer was successfully created"
    click_on "Back"
  end

  test "should update Sportplayer" do
    visit sportplayer_url(@sportplayer)
    click_on "Edit this sportplayer", match: :first

    fill_in "Age", with: @sportplayer.age
    fill_in "Ball control", with: @sportplayer.ball_control
    fill_in "Crossing", with: @sportplayer.crossing
    fill_in "Dribbling", with: @sportplayer.dribbling
    fill_in "First name", with: @sportplayer.first_name
    fill_in "Last name", with: @sportplayer.last_name
    fill_in "Progress", with: @sportplayer.progress
    fill_in "Running with the ball", with: @sportplayer.running_with_the_ball
    fill_in "Shooting", with: @sportplayer.shooting
    fill_in "Short passing", with: @sportplayer.short_passing
    click_on "Update Sportplayer"

    assert_text "Sportplayer was successfully updated"
    click_on "Back"
  end

  test "should destroy Sportplayer" do
    visit sportplayer_url(@sportplayer)
    click_on "Destroy this sportplayer", match: :first

    assert_text "Sportplayer was successfully destroyed"
  end
end
