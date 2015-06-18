require 'spec_helper'


describe Diorama::Resolver do
  let(:resolver) { Diorama::Resolver.using(DioramaTemplate) }
  
  context ".find_templates" do
    it "should find a template using the passed-in parameters" do
      template = FactoryGirl.create(:diorama_template, :path => 'foo/example')
      details = { :formats => [:html], :locale => [:en], :handlers => [:erb] }
      resolver.find_templates('example', 'foo', false, details).first.should_not be_nil
      # true.should == false
    end
  end
end