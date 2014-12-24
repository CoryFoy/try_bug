require 'test_helper'

class LocalScoresControllerTest < ActionController::TestCase
  setup do
    @local_score = local_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_score" do
    assert_difference('LocalScore.count') do
      post :create, local_score: { game: @local_score.game, score: @local_score.score }
    end

    assert_redirected_to local_score_path(assigns(:local_score))
  end

  test "should show local_score" do
    get :show, id: @local_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_score
    assert_response :success
  end

  test "should update local_score" do
    patch :update, id: @local_score, local_score: { game: @local_score.game, score: @local_score.score }
    assert_redirected_to local_score_path(assigns(:local_score))
  end

  test "should destroy local_score" do
    assert_difference('LocalScore.count', -1) do
      delete :destroy, id: @local_score
    end

    assert_redirected_to local_scores_path
  end
end
