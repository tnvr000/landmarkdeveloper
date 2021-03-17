require 'test_helper'

class Admin::PhotographsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_photograph = admin_photographs(:one)
  end

  test "should get index" do
    get admin_photographs_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_photograph_url
    assert_response :success
  end

  test "should create admin_photograph" do
    assert_difference('Admin::Photograph.count') do
      post admin_photographs_url, params: { admin_photograph: { caption: @admin_photograph.caption } }
    end

    assert_redirected_to admin_photograph_url(Admin::Photograph.last)
  end

  test "should show admin_photograph" do
    get admin_photograph_url(@admin_photograph)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_photograph_url(@admin_photograph)
    assert_response :success
  end

  test "should update admin_photograph" do
    patch admin_photograph_url(@admin_photograph), params: { admin_photograph: { caption: @admin_photograph.caption } }
    assert_redirected_to admin_photograph_url(@admin_photograph)
  end

  test "should destroy admin_photograph" do
    assert_difference('Admin::Photograph.count', -1) do
      delete admin_photograph_url(@admin_photograph)
    end

    assert_redirected_to admin_photographs_url
  end
end
