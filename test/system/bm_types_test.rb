require "application_system_test_case"

class BmTypesTest < ApplicationSystemTestCase
  setup do
    @bm_type = bm_types(:one)
  end

  test "visiting the index" do
    visit bm_types_url
    assert_selector "h1", text: "Bm Types"
  end

  test "creating a Bm type" do
    visit bm_types_url
    click_on "New Bm Type"

    fill_in "Name", with: @bm_type.name
    click_on "Create Bm type"

    assert_text "Bm type was successfully created"
    click_on "Back"
  end

  test "updating a Bm type" do
    visit bm_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bm_type.name
    click_on "Update Bm type"

    assert_text "Bm type was successfully updated"
    click_on "Back"
  end

  test "destroying a Bm type" do
    visit bm_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bm type was successfully destroyed"
  end
end
