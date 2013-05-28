require 'spec_helper'

describe "foodcategories/index" do
  before(:each) do
    assign(:foodcategories, [
      stub_model(Foodcategory,
        :name => "Name"
      ),
      stub_model(Foodcategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of foodcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
