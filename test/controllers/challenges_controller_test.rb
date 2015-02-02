require 'test_helper'

class ChallengesControllerTest < ActionController::TestCase
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:challenges)
  end

  test "should create challenge" do
    assert_difference('Challenge.count') do
      post :create, challenge: { challenge: @challenge.challenge, challenge_id: @challenge.challenge_id }
    end

    assert_response 201
  end

  test "should show challenge" do
    get :show, id: @challenge
    assert_response :success
  end

  test "should update challenge" do
    put :update, id: @challenge, challenge: { challenge: @challenge.challenge, challenge_id: @challenge.challenge_id }
    assert_response 204
  end

  test "should destroy challenge" do
    assert_difference('Challenge.count', -1) do
      delete :destroy, id: @challenge
    end

    assert_response 204
  end
end
