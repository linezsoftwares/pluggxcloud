require 'test_helper'

class PowerconsumptionsControllerTest < ActionController::TestCase
  setup do
    @powerconsumption = powerconsumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:powerconsumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create powerconsumption" do
    assert_difference('Powerconsumption.count') do
      post :create, powerconsumption: { data: @powerconsumption.data, day: @powerconsumption.day }
    end

    assert_redirected_to powerconsumption_path(assigns(:powerconsumption))
  end

  test "should show powerconsumption" do
    get :show, id: @powerconsumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @powerconsumption
    assert_response :success
  end

  test "should update powerconsumption" do
    patch :update, id: @powerconsumption, powerconsumption: { data: @powerconsumption.data, day: @powerconsumption.day }
    assert_redirected_to powerconsumption_path(assigns(:powerconsumption))
  end

  test "should destroy powerconsumption" do
    assert_difference('Powerconsumption.count', -1) do
      delete :destroy, id: @powerconsumption
    end

    assert_redirected_to powerconsumptions_path
  end
end
