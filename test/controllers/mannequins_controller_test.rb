require "test_helper"

class MannequinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mannequin = mannequins(:one)
  end

  test "should get index" do
    get mannequins_url
    assert_response :success
  end

  test "should get new" do
    get new_mannequin_url
    assert_response :success
  end

  test "should create mannequin" do
    assert_difference("Mannequin.count") do
      post mannequins_url, params: { mannequin: { chest: @mannequin.chest, hip: @mannequin.hip, length: @mannequin.length, shoulder: @mannequin.shoulder, waist: @mannequin.waist } }
    end

    assert_redirected_to mannequin_url(Mannequin.last)
  end

  test "should show mannequin" do
    get mannequin_url(@mannequin)
    assert_response :success
  end

  test "should get edit" do
    get edit_mannequin_url(@mannequin)
    assert_response :success
  end

  test "should update mannequin" do
    patch mannequin_url(@mannequin), params: { mannequin: { chest: @mannequin.chest, hip: @mannequin.hip, length: @mannequin.length, shoulder: @mannequin.shoulder, waist: @mannequin.waist } }
    assert_redirected_to mannequin_url(@mannequin)
  end

  test "should destroy mannequin" do
    assert_difference("Mannequin.count", -1) do
      delete mannequin_url(@mannequin)
    end

    assert_redirected_to mannequins_url
  end
end
