require 'spec_helper'

describe "lids/show" do
  before(:each) do
    @lid = assign(:lid, stub_model(Lid,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
