require 'test_helper'

class RecitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recital = recitals(:one)
  end

  test "should get index" do
    get recitals_url
    assert_response :success
  end

  test "should get new" do
    get new_recital_url
    assert_response :success
  end

  test "should create recital" do
    assert_difference('Recital.count') do
      post recitals_url, params: { recital: { date: @recital.date, location: @recital.location, name: @recital.name, note: @recital.note } }
    end

    assert_redirected_to recital_url(Recital.last)
  end

  test "should show recital" do
    get recital_url(@recital)
    assert_response :success
  end

  test "should get edit" do
    get edit_recital_url(@recital)
    assert_response :success
  end

  test "should update recital" do
    patch recital_url(@recital), params: { recital: { date: @recital.date, location: @recital.location, name: @recital.name, note: @recital.note } }
    assert_redirected_to recital_url(@recital)
  end

  test "should destroy recital" do
    assert_difference('Recital.count', -1) do
      delete recital_url(@recital)
    end

    assert_redirected_to recitals_url
  end
end
