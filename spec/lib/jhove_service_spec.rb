require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'nokogiri'

describe JhoveService do
  it "should analyze a jpg and return xml output" do
    xml = JhoveService.analyze(File.join(RAILS_ROOT, 'public', 'images', 'trees.jpg'))
    xml.should_not be_nil
    doc = Nokogiri::XML.parse(xml)  
    doc.at_xpath("//xmlns:format").text.should == 'JPEG'
    doc.xpath("//xmlns:status").text.should == 'Well-Formed and valid'
  end
end