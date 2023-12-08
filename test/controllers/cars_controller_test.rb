require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/cars.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Car.count, data.length
  end

  test "create" do
    assert_difference "Car.count", 1 do
      post "/cars.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

end
