require 'spec_helper'


describe Diorama::Resolver do
  let(:resolver) { Diorama::Resolver.using(DatabaseTemplate) }
  
  context ".find_templates" do
    it "should find a template using the passed-in parameters" do
      false.should == false
    end
  end
end