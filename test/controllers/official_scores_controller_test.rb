require 'test_helper'

class OfficialScoresControllerTest < ActionController::TestCase
  setup do
    @official_score = official_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:official_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create official_score" do
    assert_difference('OfficialScore.count') do
      post :create, official_score: { game: @official_score.game, high_score: @official_score.high_score }
    end

    assert_redirected_to official_score_path(assigns(:official_score))
  end

  test "should show official_score" do
    get :show, id: @official_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @official_score
    assert_response :success
  end

  test "should update official_score" do
    patch :update, id: @official_score, official_score: { game: @official_score.game, high_score: @official_score.high_score }
    assert_redirected_to official_score_path(assigns(:official_score))
  end

  test "should destroy official_score" do
    assert_difference('OfficialScore.count', -1) do
      delete :destroy, id: @official_score
    end

    assert_redirected_to official_scores_path
  end
end
