require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Voyageses, "index action" do
  before(:each) do
    dispatch_to(Voyageses, :index)
  end
end