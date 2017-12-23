require 'test_helper'

class BasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basis = bases(:one)
  end

  test "should get index" do
    get bases_url
    assert_response :success
  end

  test "should get new" do
    get new_basis_url
    assert_response :success
  end

  test "should create basis" do
    assert_difference('Base.count') do
      post bases_url, params: { basis: {  } }
    end

    assert_redirected_to basis_url(Base.last)
  end

  test "should show basis" do
    get basis_url(@basis)
    assert_response :success
  end

  test "should get edit" do
    get edit_basis_url(@basis)
    assert_response :success
  end

  test "should update basis" do
    patch basis_url(@basis), params: { basis: {  } }
    assert_redirected_to basis_url(@basis)
  end

  test "should destroy basis" do
    assert_difference('Base.count', -1) do
      delete basis_url(@basis)
    end

    assert_redirected_to bases_url
  end
end
