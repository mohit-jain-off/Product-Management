require "test_helper"

class ProjecttabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projecttab = projecttabs(:one)
  end

  test "should get index" do
    get projecttabs_url
    assert_response :success
  end

  test "should get new" do
    get new_projecttab_url
    assert_response :success
  end

  test "should create projecttab" do
    assert_difference('Projecttab.count') do
      post projecttabs_url, params: { projecttab: { description: @projecttab.description, name: @projecttab.name } }
    end

    assert_redirected_to projecttab_url(Projecttab.last)
  end

  test "should show projecttab" do
    get projecttab_url(@projecttab)
    assert_response :success
  end

  test "should get edit" do
    get edit_projecttab_url(@projecttab)
    assert_response :success
  end

  test "should update projecttab" do
    patch projecttab_url(@projecttab), params: { projecttab: { description: @projecttab.description, name: @projecttab.name } }
    assert_redirected_to projecttab_url(@projecttab)
  end

  test "should destroy projecttab" do
    assert_difference('Projecttab.count', -1) do
      delete projecttab_url(@projecttab)
    end

    assert_redirected_to projecttabs_url
  end
end
