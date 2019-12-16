require 'test_helper'

class LessonsLearnedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lessons_learned = lessons_learneds(:one)
  end

  test "should get index" do
    get lessons_learneds_url
    assert_response :success
  end

  test "should get new" do
    get new_lessons_learned_url
    assert_response :success
  end

  test "should create lessons_learned" do
    assert_difference('LessonsLearned.count') do
      post lessons_learneds_url, params: { lessons_learned: { content: @lessons_learned.content } }
    end

    assert_redirected_to lessons_learned_url(LessonsLearned.last)
  end

  test "should show lessons_learned" do
    get lessons_learned_url(@lessons_learned)
    assert_response :success
  end

  test "should get edit" do
    get edit_lessons_learned_url(@lessons_learned)
    assert_response :success
  end

  test "should update lessons_learned" do
    patch lessons_learned_url(@lessons_learned), params: { lessons_learned: { content: @lessons_learned.content } }
    assert_redirected_to lessons_learned_url(@lessons_learned)
  end

  test "should destroy lessons_learned" do
    assert_difference('LessonsLearned.count', -1) do
      delete lessons_learned_url(@lessons_learned)
    end

    assert_redirected_to lessons_learneds_url
  end
end
