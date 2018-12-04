require "test_helper"

class MegalottoTest < Minitest::Test
    def test_draw_count_initially_six
        Megalotto::Configuration.new.drawing_count = 6
    end

    def test_can_set_drawing_count
        config = Megalotto::Configuration.new
        config.drawing_count = 7
        assert_equal 7, config.drawing_count
    end
end
