require "test_helper"

class AthletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athlete = athletes(:one)
  end

  test "should get index" do
    get athletes_url
    assert_response :success
  end

  test "should get new" do
    get new_athlete_url
    assert_response :success
  end

  test "should create athlete" do
    assert_difference("Athlete.count") do
      post athletes_url, params: { athlete: { age: @athlete.age, first_name: @athlete.first_name, last_name: @athlete.last_name, progress: @athlete.progress, week_1: @athlete.week_1, week_2: @athlete.week_2, week_3: @athlete.week_3, week_4: @athlete.week_4, week_5: @athlete.week_5, week_6: @athlete.week_6 } }
    end

    assert_redirected_to athlete_url(Athlete.last)
  end

  test "should show athlete" do
    get athlete_url(@athlete)
    assert_response :success
  end

  test "should get edit" do
    get edit_athlete_url(@athlete)
    assert_response :success
  end

  test "should update athlete" do
    patch athlete_url(@athlete), params: { athlete: { age: @athlete.age, first_name: @athlete.first_name, last_name: @athlete.last_name, progress: @athlete.progress, week_1: @athlete.week_1, week_2: @athlete.week_2, week_3: @athlete.week_3, week_4: @athlete.week_4, week_5: @athlete.week_5, week_6: @athlete.week_6 } }
    assert_redirected_to athlete_url(@athlete)
  end

  test "should destroy athlete" do
    assert_difference("Athlete.count", -1) do
      delete athlete_url(@athlete)
    end

    assert_redirected_to athletes_url
  end
end
