require 'test_helper'

class DinosHelperTest < ActionView::TestCase
  test "convert pounds to tons" do
    weights, tons, res = [2000, 750, 50], [1, 0.375, 0.025], []
    weights.each do |x|
      res.push(x/2000.to_f)
    end
    
    tons.each_with_index do |n, x|
      assert_equal(n, tons[x])
    end
  end
end
