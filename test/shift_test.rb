require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @key = Key.new("05143")
    @offset = Offset.new("050979")
    @shift = Shift.new(@key, @offset)
  end

  def test_key_exists
    assert_instance_of Shift, @shift
  end

  def test_it_can_combine_shifts
    expected1 = {:A=>13, :B=>55, :C=>18, :D=>44}
    expected2 = {:A=>-13, :B=>-55, :C=>-18, :D=>-44}

    assert_equal expected1, @shift.combine_shifts_with_direction(1)
    assert_equal expected2, @shift.combine_shifts_with_direction(-1)
  end

  def test_it_can_shift_character_set
    shifts = {:A=>13, :B=>55, :C=>18, :D=>44}
    expected1 = ["n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    expected2 = ["r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q"]

    assert_equal expected1, @shift.shift_character_set(4, shifts)
    assert_equal expected2, @shift.shift_character_set(11, shifts)
  end

  def test_it_can_format_message
    assert_equal 'hello', @shift.formatted_message('HELLO')
  end

  def test_it_can_transform_message
    final_shift = {:A=>13, :B=>55, :C=>18, :D=>44}

    assert_equal "ufcbaanedmv", @shift.transform_message("HELLO world", final_shift)

  end

end
