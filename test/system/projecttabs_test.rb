require "application_system_test_case"

class ProjecttabsTest < ApplicationSystemTestCase
  setup do
    @projecttab = projecttabs(:one)
  end

  test "visiting the index" do
    visit projecttabs_url
    assert_selector "h1", text: "Projecttabs"
  end

  test "creating a Projecttab" do
    visit projecttabs_url
    click_on "New Projecttab"

    fill_in "Description", with: @projecttab.description
    fill_in "Name", with: @projecttab.name
    click_on "Create Projecttab"

    assert_text "Projecttab was successfully created"
    click_on "Back"
  end

  test "updating a Projecttab" do
    visit projecttabs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @projecttab.description
    fill_in "Name", with: @projecttab.name
    click_on "Update Projecttab"

    assert_text "Projecttab was successfully updated"
    click_on "Back"
  end

  test "destroying a Projecttab" do
    visit projecttabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projecttab was successfully destroyed"
  end
end
