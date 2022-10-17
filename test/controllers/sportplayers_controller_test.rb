require "test_helper"

class SportplayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sportplayer = sportplayers(:one)
  end

  test "should get index" do
    get sportplayers_url
    assert_response :success
  end

  test "should get new" do
    get new_sportplayer_url
    assert_response :success
  end

  test "should create sportplayer" do
    assert_difference("Sportplayer.count") do
      post sportplayers_url, params: { sportplayer: { age: @sportplayer.age, ball_control: @sportplayer.ball_control, crossing: @sportplayer.crossing, dribbling: @sportplayer.dribbling, first_name: @sportplayer.first_name, last_name: @sportplayer.last_name, progress: @sportplayer.progress, running_with_the_ball: @sportplayer.running_with_the_ball, shooting: @sportplayer.shooting, short_passing: @sportplayer.short_passing } }
    end

    assert_redirected_to sportplayer_url(Sportplayer.last)
  end

  test "should show sportplayer" do
    get sportplayer_url(@sportplayer)
    assert_response :success
  end

  test "should get edit" do
    get edit_sportplayer_url(@sportplayer)
    assert_response :success
  end

  test "should update sportplayer" do
    patch sportplayer_url(@sportplayer), params: { sportplayer: { age: @sportplayer.age, ball_control: @sportplayer.ball_control, crossing: @sportplayer.crossing, dribbling: @sportplayer.dribbling, first_name: @sportplayer.first_name, last_name: @sportplayer.last_name, progress: @sportplayer.progress, running_with_the_ball: @sportplayer.running_with_the_ball, shooting: @sportplayer.shooting, short_passing: @sportplayer.short_passing } }
    assert_redirected_to sportplayer_url(@sportplayer)
  end

  test "should destroy sportplayer" do
    assert_difference("Sportplayer.count", -1) do
      delete sportplayer_url(@sportplayer)
    end

    assert_redirected_to sportplayers_url
  end
end
