require "application_system_test_case"

class Admin::PhotographsTest < ApplicationSystemTestCase
  setup do
    @admin_photograph = admin_photographs(:one)
  end

  test "visiting the index" do
    visit admin_photographs_url
    assert_selector "h1", text: "Admin/Photographs"
  end

  test "creating a Photograph" do
    visit admin_photographs_url
    click_on "New Admin/Photograph"

    fill_in "Caption", with: @admin_photograph.caption
    click_on "Create Photograph"

    assert_text "Photograph was successfully created"
    click_on "Back"
  end

  test "updating a Photograph" do
    visit admin_photographs_url
    click_on "Edit", match: :first

    fill_in "Caption", with: @admin_photograph.caption
    click_on "Update Photograph"

    assert_text "Photograph was successfully updated"
    click_on "Back"
  end

  test "destroying a Photograph" do
    visit admin_photographs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photograph was successfully destroyed"
  end
end
