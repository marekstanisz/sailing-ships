require 'test_helper'

class FuckupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuckup = fuckups(:one)
  end

  test "should get index" do
    get fuckups_url
    assert_response :success
  end

  test "should get new" do
    get new_fuckup_url
    assert_response :success
  end

  test "should create fuckup" do
    assert_difference('Fuckup.count') do
      post fuckups_url, params: { fuckup: { content: @fuckup.content } }
    end

    assert_redirected_to fuckup_url(Fuckup.last)
  end

  test "should show fuckup" do
    get fuckup_url(@fuckup)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuckup_url(@fuckup)
    assert_response :success
  end

  test "should update fuckup" do
    patch fuckup_url(@fuckup), params: { fuckup: { content: @fuckup.content } }
    assert_redirected_to fuckup_url(@fuckup)
  end

  test "should destroy fuckup" do
    assert_difference('Fuckup.count', -1) do
      delete fuckup_url(@fuckup)
    end

    assert_redirected_to fuckups_url
  end
end
