require 'spec_helper'

describe Document do
  
  it 'stores figures' do
    f = Figure.new
    d = Document.new('hey', 'hi', [f])
    d.figures[0].should == f
  end
  
  describe '#to_s' do
    it 'returns a string representing the document' do
      d = Document.new
      d.should respond_to :to_s
      d.to_s.should be_an_instance_of String
      d.to_s.should include d.title
    end
  end
  
  describe '#to_html' do
    it 'returns a string with an HTML representation of the document' do
      d = Document.new
      d.to_html.should =~ /^<div class="eagle-eye">.*/
      d.to_html.should include d.title
    end
  end
  
end