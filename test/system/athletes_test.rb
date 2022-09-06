require "application_system_test_case"

class AthletesTest < ApplicationSystemTestCase
  setup do
    @athlete = athletes(:one)
  end

  test "visiting the index" do
    visit athletes_url
    assert_selector "h1", text: "Athletes"
  end

  test "should create athlete" do
    visit athletes_url
    click_on "New athlete"

    fill_in "Age", with: @athlete.age
    fill_in "First name", with: @athlete.first_name
    fill_in "Last name", with: @athlete.last_name
    fill_in "Progress", with: @athlete.progress
    fill_in "Week 1", with: @athlete.week_1
    fill_in "Week 2", with: @athlete.week_2
    fill_in "Week 3", with: @athlete.week_3
    fill_in "Week 4", with: @athlete.week_4
    fill_in "Week 5", with: @athlete.week_5
    fill_in "Week 6", with: @athlete.week_6
    click_on "Create Athlete"

    assert_text "Athlete was successfully created"
    click_on "Back"
  end

  test "should update Athlete" do
    visit athlete_url(@athlete)
    click_on "Edit this athlete", match: :first

    fill_in "Age", with: @athlete.age
    fill_in "First name", with: @athlete.first_name
    fill_in "Last name", with: @athlete.last_name
    fill_in "Progress", with: @athlete.progress
    fill_in "Week 1", with: @athlete.week_1
    fill_in "Week 2", with: @athlete.week_2
    fill_in "Week 3", with: @athlete.week_3
    fill_in "Week 4", with: @athlete.week_4
    fill_in "Week 5", with: @athlete.week_5
    fill_in "Week 6", with: @athlete.week_6
    click_on "Update Athlete"

    assert_text "Athlete was successfully updated"
    click_on "Back"
  end

  test "should destroy Athlete" do
    visit athlete_url(@athlete)
    click_on "Destroy this athlete", match: :first

    assert_text "Athlete was successfully destroyed"
  end
end
