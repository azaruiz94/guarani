require 'test_helper'

class AlojamientoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alojamiento_index_url
    assert_response :success
  end

end
