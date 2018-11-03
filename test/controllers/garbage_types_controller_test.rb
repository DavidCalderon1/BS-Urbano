require 'test_helper'

class GarbageTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garbage_type = garbage_types(:one)
  end

  test "should get index" do
    get garbage_types_url
    assert_response :success
  end

  test "should get new" do
    get new_garbage_type_url
    assert_response :success
  end

  test "should create garbage_type" do
    assert_difference('GarbageType.count') do
      post garbage_types_url, params: { garbage_type: { description: @garbage_type.description, name: @garbage_type.name, picture: @garbage_type.picture } }
    end

    assert_redirected_to garbage_type_url(GarbageType.last)
  end

  test "should show garbage_type" do
    get garbage_type_url(@garbage_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_garbage_type_url(@garbage_type)
    assert_response :success
  end

  test "should update garbage_type" do
    patch garbage_type_url(@garbage_type), params: { garbage_type: { description: @garbage_type.description, name: @garbage_type.name, picture: @garbage_type.picture } }
    assert_redirected_to garbage_type_url(@garbage_type)
  end

  test "should destroy garbage_type" do
    assert_difference('GarbageType.count', -1) do
      delete garbage_type_url(@garbage_type)
    end

    assert_redirected_to garbage_types_url
  end
end
