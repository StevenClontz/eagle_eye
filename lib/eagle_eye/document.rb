module EagleEye
  class Document
    
    attr_accessor :title, :content, :figures
    
    def initialize(title="Undefined", content="none", figures=[])
      @title, @content, @figures = title, content, figures
    end
    
    def to_s
      "#{@title}\n#{@content}"
    end
    
    def to_html
      ERB.new(get_template 'document.html').result(binding)
    end
    
  end
end