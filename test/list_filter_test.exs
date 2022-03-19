defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "when a valid list is provided, returns the number of odd numbers" do
      list = ["bruce", "1", "3", "5", "6"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end

    # test "when an invalid list is provided, returns an error" do
    #   response = []

    #   expected_response = "banana"

    #   assert response == expected_response
    # end
  end
end
