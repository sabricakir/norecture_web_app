require "application_system_test_case"

class MannequinsTest < ApplicationSystemTestCase
  setup do
    @mannequin = mannequins(:one)
  end

  test "visiting the index" do
    visit mannequins_url
    assert_selector "h1", text: "Mannequins"
  end

  test "should create mannequin" do
    visit mannequins_url
    click_on "New mannequin"

    fill_in "Chest", with: @mannequin.chest
    fill_in "Hip", with: @mannequin.hip
    fill_in "Length", with: @mannequin.length
    fill_in "Shoulder", with: @mannequin.shoulder
    fill_in "Waist", with: @mannequin.waist
    click_on "Create Mannequin"

    assert_text "Mannequin was successfully created"
    click_on "Back"
  end

  test "should update Mannequin" do
    visit mannequin_url(@mannequin)
    click_on "Edit this mannequin", match: :first

    fill_in "Chest", with: @mannequin.chest
    fill_in "Hip", with: @mannequin.hip
    fill_in "Length", with: @mannequin.length
    fill_in "Shoulder", with: @mannequin.shoulder
    fill_in "Waist", with: @mannequin.waist
    click_on "Update Mannequin"

    assert_text "Mannequin was successfully updated"
    click_on "Back"
  end

  test "should destroy Mannequin" do
    visit mannequin_url(@mannequin)
    click_on "Destroy this mannequin", match: :first

    assert_text "Mannequin was successfully destroyed"
  end
end
