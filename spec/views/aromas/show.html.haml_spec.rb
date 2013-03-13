require 'spec_helper'

describe "aromas/show" do
  before(:each) do
    @aroma = assign(:aroma, stub_model(Aroma,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
