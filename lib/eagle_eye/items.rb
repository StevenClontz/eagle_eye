module EagleEye
  module Items
    class Item
      def self.hi
        "item!"
      end
    end
    class Figure < Item
      def self.hi
        "figure!"
      end
    end
    class Table < Item
      def self.hi
        "table!"
      end
    end
    class Chart < Item
      def self.hi
        "chart!"
      end
    end
  end
end