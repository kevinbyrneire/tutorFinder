require 'test_helper'

class SubjectItemsControllerTest < ActionController::TestCase
  setup do
    @subject_item = subject_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_item" do
    assert_difference('SubjectItem.count') do
      post :create, subject_item: { subjects_id: @subject_item.subjects_id, tutors_id: @subject_item.tutors_id }
    end

    assert_redirected_to subject_item_path(assigns(:subject_item))
  end

  test "should show subject_item" do
    get :show, id: @subject_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_item
    assert_response :success
  end

  test "should update subject_item" do
    patch :update, id: @subject_item, subject_item: { subjects_id: @subject_item.subjects_id, tutors_id: @subject_item.tutors_id }
    assert_redirected_to subject_item_path(assigns(:subject_item))
  end

  test "should destroy subject_item" do
    assert_difference('SubjectItem.count', -1) do
      delete :destroy, id: @subject_item
    end

    assert_redirected_to subject_items_path
  end
end
