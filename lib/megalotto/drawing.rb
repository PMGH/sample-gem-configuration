module Megalotto
  class Drawing
    def draw
        Megalotto.configuration.drawing_count.times.map { single_draw }
    end

    private

    def single_draw
        rand(0..60)
    end
  end
end