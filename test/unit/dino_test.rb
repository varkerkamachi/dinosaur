require 'test_helper'

class DinoTest < ActiveSupport::TestCase
  
  def setup
    @nonamedino = Dino.new(:name=>"", :description=>"no name dino")
    @nodescriptiondino = Dino.new(:name=>"no desc dino", :description=>"")
    @fulldino = Dino.new(:name=>"My Dino", :description=>"My dino's description")
    @speeds, @weights, @heights = [],[],[]
    Dino.all(:select => 'speed').each do |x|
      @speeds.push(x.speed)
    end
    @speeds = @speeds.sort.reverse
    Dino.all(:select => 'weight').each do |x|
      @weights.push(x.weight)
    end
    @weights = @weights.sort.reverse
    Dino.all(:select => 'height').each do |x|
      @heights.push(x.height)
    end
    @heights = @heights.sort.reverse
  end

  test "Named scope limit" do
    @twodinos = Dino.limit(2)
    assert_equal(Dino.all(:limit=>2).size, @twodinos.size)
  end
  test "find fastest" do
    assert_equal(Dino.find_fastest.first.speed, @speeds[0])
  end
  test "find slowest" do
    assert_equal(Dino.find_slowest.first.speed, @speeds[@speeds.length-1])
  end
  test "find heaviest" do
    assert_equal(Dino.find_heaviest.first.weight, @weights[0])
  end
  test "find lightest" do
    assert_equal(Dino.find_lightest.first.weight, @weights[@weights.length-1])
  end
  test "find tallest" do
    assert_equal(Dino.find_tallest.first.height, @heights[0])
  end
  test "find shortest" do
    assert_equal(Dino.find_shortest.first.height, @heights[@heights.length-1])
  end
  
  test "shouldn't save without a name" do
    assert !@nonamedino.save
  end
  test "shouldn't save without a description" do
    assert !@nodescriptiondino.save
  end  
  test "should save with a title and a description" do
    assert @fulldino.save
  end  
  
end



