require 'test_helper'

class MailingsControllerTest < ActionController::TestCase

  setup do
    @mailing = mailings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailing" do
    assert_difference('Mailing.count') do
      post :create, mailing: @mailing.attributes.except("id", "created_at", "updated_at")
    end

    assert_redirected_to mailings_path
  end

  test "should show mailing" do
    get :show, id: @mailing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailing
    assert_response :success
  end

  test "should update mailing" do
    patch :update, id: @mailing, mailing: @mailing.attributes.except("id", "created_at", "updated_at")
    assert_redirected_to mailings_path
  end

  test "should destroy mailing" do
    assert_difference('Mailing.count', -1) do
      delete :destroy, id: @mailing
    end

    assert_redirected_to mailings_path
  end
end
