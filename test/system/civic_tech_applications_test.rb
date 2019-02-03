require "application_system_test_case"

class CivicTechApplicationsTest < ApplicationSystemTestCase
  setup do
    @civic_tech_application = civic_tech_applications(:one)
  end

  test "visiting the index" do
    visit civic_tech_applications_url
    assert_selector "h1", text: "Civic Tech Applications"
  end

  test "creating a Civic tech application" do
    visit civic_tech_applications_url
    click_on "New Civic Tech Application"

    fill_in "Description", with: @civic_tech_application.description
    fill_in "Name", with: @civic_tech_application.name
    fill_in "Url", with: @civic_tech_application.url
    click_on "Create Civic tech application"

    assert_text "Civic tech application was successfully created"
    click_on "Back"
  end

  test "updating a Civic tech application" do
    visit civic_tech_applications_url
    click_on "Edit", match: :first

    fill_in "Description", with: @civic_tech_application.description
    fill_in "Name", with: @civic_tech_application.name
    fill_in "Url", with: @civic_tech_application.url
    click_on "Update Civic tech application"

    assert_text "Civic tech application was successfully updated"
    click_on "Back"
  end

  test "destroying a Civic tech application" do
    visit civic_tech_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Civic tech application was successfully destroyed"
  end
end
