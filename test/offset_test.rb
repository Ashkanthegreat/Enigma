require_relative 'test_helper'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new('05091979')
  end

  def test_key_exists
    assert_instance_of Offset, @offset
  end

  def test_offset_attrributes
    assert_equal '05091979', @offset.date
  end

  def test_offset_can_get_todays_date
    Date.stubs(:today).returns('05091979')
    assert_equal '05091979', @offset.date
  end

  def test_it_can_create_an_offset
    
  end
end
