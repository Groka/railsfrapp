require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { activity_id: @company.activity_id, address: @company.address, allowed: @company.allowed, contact: @company.contact, email: @company.email, event_id: @company.event_id, member_id: @company.member_id, name: @company.name, note: @company.note, number: @company.number, status_id: @company.status_id, web: @company.web } }
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { activity_id: @company.activity_id, address: @company.address, allowed: @company.allowed, contact: @company.contact, email: @company.email, event_id: @company.event_id, member_id: @company.member_id, name: @company.name, note: @company.note, number: @company.number, status_id: @company.status_id, web: @company.web } }
    assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company)
    end

    assert_redirected_to companies_url
  end
end
