require 'test_helper'

class MydebtsControllerTest < ActionController::TestCase
  setup do
    @mydebt = mydebts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mydebts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mydebt" do
    assert_difference('Mydebt.count') do
      post :create, mydebt: { amount: @mydebt.amount, confirmation: @mydebt.confirmation, payment: @mydebt.payment, title: @mydebt.title, user_id: @mydebt.user_id }
    end

    assert_redirected_to mydebt_path(assigns(:mydebt))
  end

  test "should show mydebt" do
    get :show, id: @mydebt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mydebt
    assert_response :success
  end

  test "should update mydebt" do
    put :update, id: @mydebt, mydebt: { amount: @mydebt.amount, confirmation: @mydebt.confirmation, payment: @mydebt.payment, title: @mydebt.title, user_id: @mydebt.user_id }
    assert_redirected_to mydebt_path(assigns(:mydebt))
  end

  test "should destroy mydebt" do
    assert_difference('Mydebt.count', -1) do
      delete :destroy, id: @mydebt
    end

    assert_redirected_to mydebts_path
  end
end
