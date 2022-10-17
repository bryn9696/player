require "test_helper"

class SportsmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sportsman = sportsmen(:one)
  end

  test "should get index" do
    get sportsmen_url
    assert_response :success
  end

  test "should get new" do
    get new_sportsman_url
    assert_response :success
  end

  test "should create sportsman" do
    assert_difference("Sportsman.count") do
      post sportsmen_url, params: { sportsman: { ball_control: @sportsman.ball_control, crossing: @sportsman.crossing, dribbling: @sportsman.dribbling, progress: @sportsman.progress, running_with_the_ball: @sportsman.running_with_the_ball, shooting: @sportsman.shooting, short_passing: @sportsman.short_passing } }
    end

    assert_redirected_to sportsman_url(Sportsman.last)
  end

  test "should show sportsman" do
    get sportsman_url(@sportsman)
    assert_response :success
  end

  test "should get edit" do
    get edit_sportsman_url(@sportsman)
    assert_response :success
  end

  test "should update sportsman" do
    patch sportsman_url(@sportsman), params: { sportsman: { ball_control: @sportsman.ball_control, crossing: @sportsman.crossing, dribbling: @sportsman.dribbling, progress: @sportsman.progress, running_with_the_ball: @sportsman.running_with_the_ball, shooting: @sportsman.shooting, short_passing: @sportsman.short_passing } }
    assert_redirected_to sportsman_url(@sportsman)
  end

  test "should destroy sportsman" do
    assert_difference("Sportsman.count", -1) do
      delete sportsman_url(@sportsman)
    end

    assert_redirected_to sportsmen_url
  end
end
