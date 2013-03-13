require 'spec_helper'

describe "beerstyles/show" do
  before(:each) do
    @beerstyle = assign(:beerstyle, stub_model(Beerstyle,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
