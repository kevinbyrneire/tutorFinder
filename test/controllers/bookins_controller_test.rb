require 'test_helper'

class BookinsControllerTest < ActionController::TestCase
  setup do
    @bookin = bookins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookin" do
    assert_difference('Bookin.count') do
      post :create, bookin: { tutor_id: @bookin.tutor_id }
    end

    assert_redirected_to bookin_path(assigns(:bookin))
  end

  test "should show bookin" do
    get :show, id: @bookin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookin
    assert_response :success
  end

  test "should update bookin" do
    patch :update, id: @bookin, bookin: { tutor_id: @bookin.tutor_id }
    assert_redirected_to bookin_path(assigns(:bookin))
  end

  test "should destroy bookin" do
    assert_difference('Bookin.count', -1) do
      delete :destroy, id: @bookin
    end

    assert_redirected_to bookins_path
  end
end
