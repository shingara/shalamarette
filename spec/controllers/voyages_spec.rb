require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Voyages, "index action" do
  before(:each) do
    dispatch_to(Voyages, :index)
  end
end
