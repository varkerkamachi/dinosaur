require 'test_helper'

class DinosControllerTest < ActionController::TestCase
  setup do
    @dino = dinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dino" do
    assert_difference('Dino.count') do
      post :create, dino: { description: @dino.description, height: @dino.height, id: @dino.id, image: @dino.image, name: @dino.name, speed: @dino.speed, terrain: @dino.terrain, thumb: @dino.thumb, weight: @dino.weight }
    end

    assert_redirected_to dino_path(assigns(:dino))
  end

  test "should show dino" do
    get :show, id: @dino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dino
    assert_response :success
  end

  test "should update dino" do
    put :update, id: @dino, dino: { description: @dino.description, height: @dino.height, id: @dino.id, image: @dino.image, name: @dino.name, speed: @dino.speed, terrain: @dino.terrain, thumb: @dino.thumb, weight: @dino.weight }
    assert_redirected_to dino_path(assigns(:dino))
  end

  test "should destroy dino" do
    assert_difference('Dino.count', -1) do
      delete :destroy, id: @dino
    end

    assert_redirected_to dinos_path
  end
end
