require 'spec_helper'
include EagleEye

describe Figure do
  
  it '#to_s' do
    f = Figure.new
    f.should respond_to :to_s
    f.to_s.should be_an_instance_of String
  end
  
  [Figures::Table, Figures::Image].each do |x|
    describe x do
      it 'is a Figure' do
        x.new.should be_a_kind_of Figure
      end
    end
  end
  
end