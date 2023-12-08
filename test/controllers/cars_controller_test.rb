require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/cars.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Car.count, data.length
  end
end
