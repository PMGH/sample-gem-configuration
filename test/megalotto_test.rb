require "test_helper"

class MegalottoTest < Minitest::Test
  def setup
    Megalotto.configure do |config|
      config.drawing_count = 10
    end
  end

  def teardown
    # ensure tests pass no matter the order of execution
    Megalotto.reset
  end

  def test_returns_an_array_with_10_elements
    draw = Megalotto::Drawing.new.draw

    assert_equal Array, draw.class
    assert_equal 10, draw.size
  end

  def test_reset_configuration
    Megalotto.reset
    config = Megalotto.configuration

    assert_equal 6, config.drawing_count
  end
end
