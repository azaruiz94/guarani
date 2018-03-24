require 'test_helper'

class AlquilerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alquiler_index_url
    assert_response :success
  end

end
