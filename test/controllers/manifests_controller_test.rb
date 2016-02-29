require 'test_helper'

class ManifestsControllerTest < ActionController::TestCase
  setup do
    @manifest = manifests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manifests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manifest" do
    assert_difference('Manifest.count') do
      post :create, manifest: { billoflading: @manifest.billoflading, carnumber: @manifest.carnumber, dateofarrival: @manifest.dateofarrival, foreignportoflanding: @manifest.foreignportoflanding, nameaddressowner: @manifest.nameaddressowner, nameimportingconvevance: @manifest.nameimportingconvevance, nameofconsignee: @manifest.nameofconsignee, namepersonincharge: @manifest.namepersonincharge, numberandgrossweight: @manifest.numberandgrossweight, portofarrival: @manifest.portofarrival, usportofdestination: @manifest.usportofdestination }
    end

    assert_redirected_to manifest_path(assigns(:manifest))
  end

  test "should show manifest" do
    get :show, id: @manifest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manifest
    assert_response :success
  end

  test "should update manifest" do
    patch :update, id: @manifest, manifest: { billoflading: @manifest.billoflading, carnumber: @manifest.carnumber, dateofarrival: @manifest.dateofarrival, foreignportoflanding: @manifest.foreignportoflanding, nameaddressowner: @manifest.nameaddressowner, nameimportingconvevance: @manifest.nameimportingconvevance, nameofconsignee: @manifest.nameofconsignee, namepersonincharge: @manifest.namepersonincharge, numberandgrossweight: @manifest.numberandgrossweight, portofarrival: @manifest.portofarrival, usportofdestination: @manifest.usportofdestination }
    assert_redirected_to manifest_path(assigns(:manifest))
  end

  test "should destroy manifest" do
    assert_difference('Manifest.count', -1) do
      delete :destroy, id: @manifest
    end

    assert_redirected_to manifests_path
  end
end
