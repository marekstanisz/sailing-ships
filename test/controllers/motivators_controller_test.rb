require 'test_helper'

class MotivatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motivator = motivators(:one)
  end

  test "should get index" do
    get motivators_url
    assert_response :success
  end

  test "should get new" do
    get new_motivator_url
    assert_response :success
  end

  test "should create motivator" do
    assert_difference('Motivator.count') do
      post motivators_url, params: { motivator: { content: @motivator.content } }
    end

    assert_redirected_to motivator_url(Motivator.last)
  end

  test "should show motivator" do
    get motivator_url(@motivator)
    assert_response :success
  end

  test "should get edit" do
    get edit_motivator_url(@motivator)
    assert_response :success
  end

  test "should update motivator" do
    patch motivator_url(@motivator), params: { motivator: { content: @motivator.content } }
    assert_redirected_to motivator_url(@motivator)
  end

  test "should destroy motivator" do
    assert_difference('Motivator.count', -1) do
      delete motivator_url(@motivator)
    end

    assert_redirected_to motivators_url
  end
end
