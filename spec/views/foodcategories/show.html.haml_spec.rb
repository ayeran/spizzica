require 'spec_helper'

describe "foodcategories/show" do
  before(:each) do
    @foodcategory = assign(:foodcategory, stub_model(Foodcategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
