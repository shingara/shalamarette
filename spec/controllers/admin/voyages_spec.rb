require File.join(File.dirname(__FILE__), "../..", 'spec_helper.rb')

describe Admin::Voyages, "index action" do
  before(:each) do
    dispatch_to(Admin::Voyages, :index)
  end
end