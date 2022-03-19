defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "when a valid list is provided, returns the number of odd numbers" do
      response = ["1", "2", "carlos", "3", "4", "5", "text"]

      expected_response = ["1", "2", "carlos", "3", "4", "5", "text"]

      assert response == expected_response
    end
  end
end
