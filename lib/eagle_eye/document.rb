module EagleEye
  class Document
    
    attr_accessor :title, :content, :figures
    
    def initialize(title="Undefined", content="none")
      @title, @content = title, content
    end
    
    def to_s
      "#{@title}\n#{@content}"
    end
    
  end
end