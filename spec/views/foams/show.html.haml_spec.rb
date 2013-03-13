require 'spec_helper'

describe "foams/show" do
  before(:each) do
    @foam = assign(:foam, stub_model(Foam,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
