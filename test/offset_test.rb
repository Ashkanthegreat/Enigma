require_relative 'test_helper'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_key_exists
    assert_instance_of Offset, @offset
  end
end
