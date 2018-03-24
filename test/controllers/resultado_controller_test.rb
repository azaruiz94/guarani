require 'test_helper'

class ResultadoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resultado_index_url
    assert_response :success
  end

end
