require 'test_helper'

class DeletedCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deleted_company = deleted_companies(:one)
  end

  test "should get index" do
    get deleted_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_deleted_company_url
    assert_response :success
  end

  test "should create deleted_company" do
    assert_difference('DeletedCompany.count') do
      post deleted_companies_url, params: { deleted_company: { activity_id: @deleted_company.activity_id, address: @deleted_company.address, allowed: @deleted_company.allowed, contact: @deleted_company.contact, deleted_by_id: @deleted_company.deleted_by_id, email: @deleted_company.email, event_id: @deleted_company.event_id, member_id: @deleted_company.member_id, name: @deleted_company.name, note: @deleted_company.note, number: @deleted_company.number, old_id: @deleted_company.old_id, reason: @deleted_company.reason, status_id: @deleted_company.status_id, web: @deleted_company.web } }
    end

    assert_redirected_to deleted_company_url(DeletedCompany.last)
  end

  test "should show deleted_company" do
    get deleted_company_url(@deleted_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_deleted_company_url(@deleted_company)
    assert_response :success
  end

  test "should update deleted_company" do
    patch deleted_company_url(@deleted_company), params: { deleted_company: { activity_id: @deleted_company.activity_id, address: @deleted_company.address, allowed: @deleted_company.allowed, contact: @deleted_company.contact, deleted_by_id: @deleted_company.deleted_by_id, email: @deleted_company.email, event_id: @deleted_company.event_id, member_id: @deleted_company.member_id, name: @deleted_company.name, note: @deleted_company.note, number: @deleted_company.number, old_id: @deleted_company.old_id, reason: @deleted_company.reason, status_id: @deleted_company.status_id, web: @deleted_company.web } }
    assert_redirected_to deleted_company_url(@deleted_company)
  end

  test "should destroy deleted_company" do
    assert_difference('DeletedCompany.count', -1) do
      delete deleted_company_url(@deleted_company)
    end

    assert_redirected_to deleted_companies_url
  end
end
