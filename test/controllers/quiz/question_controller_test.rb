require "test_helper"

class Quiz::QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quiz_question_index_url
    assert_response :success
  end

  test "should get new" do
    get quiz_question_new_url
    assert_response :success
  end

  test "should get create" do
    get quiz_question_create_url
    assert_response :success
  end

  test "should get show" do
    get quiz_question_show_url
    assert_response :success
  end

  test "should get destroy" do
    get quiz_question_destroy_url
    assert_response :success
  end

  test "should get update" do
    get quiz_question_update_url
    assert_response :success
  end

  test "should get edit" do
    get quiz_question_edit_url
    assert_response :success
  end
end
