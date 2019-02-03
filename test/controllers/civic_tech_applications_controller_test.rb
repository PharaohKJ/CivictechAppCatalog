require 'test_helper'

class CivicTechApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civic_tech_application = civic_tech_applications(:one)
  end

  test "should get index" do
    get civic_tech_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_civic_tech_application_url
    assert_response :success
  end

  test "should create civic_tech_application" do
    assert_difference('CivicTechApplication.count') do
      post civic_tech_applications_url, params: { civic_tech_application: { description: @civic_tech_application.description, name: @civic_tech_application.name, url: @civic_tech_application.url } }
    end

    assert_redirected_to civic_tech_application_url(CivicTechApplication.last)
  end

  test "should show civic_tech_application" do
    get civic_tech_application_url(@civic_tech_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_civic_tech_application_url(@civic_tech_application)
    assert_response :success
  end

  test "should update civic_tech_application" do
    patch civic_tech_application_url(@civic_tech_application), params: { civic_tech_application: { description: @civic_tech_application.description, name: @civic_tech_application.name, url: @civic_tech_application.url } }
    assert_redirected_to civic_tech_application_url(@civic_tech_application)
  end

  test "should destroy civic_tech_application" do
    assert_difference('CivicTechApplication.count', -1) do
      delete civic_tech_application_url(@civic_tech_application)
    end

    assert_redirected_to civic_tech_applications_url
  end
end
