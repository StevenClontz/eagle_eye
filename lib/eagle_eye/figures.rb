module EagleEye
  class Figure
    attr_accessor :title, :description, :caption
    def to_s
      'figure!'
    end
  end
  
  module Figures
    class Image < EagleEye::Figure
      def to_s
        'image!'
      end
    end
    class Table < EagleEye::Figure
      def to_s
        'table!'
      end
    end
  end
end