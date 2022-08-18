require "application_system_test_case"

class ModelsTest < ApplicationSystemTestCase
  setup do
    @model = models(:one)
  end

  test "visiting the index" do
    visit models_url
    assert_selector "h1", text: "Models"
  end

  test "should create model" do
    visit models_url
    click_on "New model"

    fill_in "Chest", with: @model.chest
    fill_in "Hip", with: @model.hip
    fill_in "Length", with: @model.length
    fill_in "Shoulder", with: @model.shoulder
    fill_in "Waist", with: @model.waist
    click_on "Create Model"

    assert_text "Model was successfully created"
    click_on "Back"
  end

  test "should update Model" do
    visit model_url(@model)
    click_on "Edit this model", match: :first

    fill_in "Chest", with: @model.chest
    fill_in "Hip", with: @model.hip
    fill_in "Length", with: @model.length
    fill_in "Shoulder", with: @model.shoulder
    fill_in "Waist", with: @model.waist
    click_on "Update Model"

    assert_text "Model was successfully updated"
    click_on "Back"
  end

  test "should destroy Model" do
    visit model_url(@model)
    click_on "Destroy this model", match: :first

    assert_text "Model was successfully destroyed"
  end
end
