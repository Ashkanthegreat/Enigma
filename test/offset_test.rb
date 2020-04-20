require_relative 'test_helper'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new('050979')
  end

  def test_key_exists
    assert_instance_of Offset, @offset
  end

  def test_offset_attrributes
    assert_equal '050979', @offset.date
  end

  def test_offset_can_get_todays_date
    Date.stubs(:today).returns(Date.new(2020,4,19))
    assert_equal "190420", @offset.todays_date
  end

  def test_can_square_date
    assert_equal "2598858441", @offset.date_squared
  end

  def test_offset_values
    assert_equal "8441", @offset.offset_values
  end

  def test_it_can_create_an_offset
    expected = {:A=>"8", :B=>"4", :C=>"4", :D=>"1"}
    assert_equal expected, @offset.generate_offset
  end
end
