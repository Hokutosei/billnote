require 'test_helper'

class MybillsControllerTest < ActionController::TestCase
  setup do
    @mybill = mybills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mybills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mybill" do
    assert_difference('Mybill.count') do
      post :create, mybill: { amount: @mybill.amount, confirmation: @mybill.confirmation, payment: @mybill.payment, title: @mybill.title, user_id: @mybill.user_id }
    end

    assert_redirected_to mybill_path(assigns(:mybill))
  end

  test "should show mybill" do
    get :show, id: @mybill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mybill
    assert_response :success
  end

  test "should update mybill" do
    put :update, id: @mybill, mybill: { amount: @mybill.amount, confirmation: @mybill.confirmation, payment: @mybill.payment, title: @mybill.title, user_id: @mybill.user_id }
    assert_redirected_to mybill_path(assigns(:mybill))
  end

  test "should destroy mybill" do
    assert_difference('Mybill.count', -1) do
      delete :destroy, id: @mybill
    end

    assert_redirected_to mybills_path
  end
end
