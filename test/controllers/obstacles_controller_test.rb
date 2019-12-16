require 'test_helper'

class ObstaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obstacle = obstacles(:one)
  end

  test "should get index" do
    get obstacles_url
    assert_response :success
  end

  test "should get new" do
    get new_obstacle_url
    assert_response :success
  end

  test "should create obstacle" do
    assert_difference('Obstacle.count') do
      post obstacles_url, params: { obstacle: { content: @obstacle.content } }
    end

    assert_redirected_to obstacle_url(Obstacle.last)
  end

  test "should show obstacle" do
    get obstacle_url(@obstacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_obstacle_url(@obstacle)
    assert_response :success
  end

  test "should update obstacle" do
    patch obstacle_url(@obstacle), params: { obstacle: { content: @obstacle.content } }
    assert_redirected_to obstacle_url(@obstacle)
  end

  test "should destroy obstacle" do
    assert_difference('Obstacle.count', -1) do
      delete obstacle_url(@obstacle)
    end

    assert_redirected_to obstacles_url
  end
end
