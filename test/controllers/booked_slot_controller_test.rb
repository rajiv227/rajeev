require 'test_helper'

class BookedSlotControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

end
