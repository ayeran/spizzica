require 'spec_helper'

describe "beverages/index" do
  before(:each) do
    assign(:beverages, [
      stub_model(Beverage,
        :name => "Name",
        :strength => "9.99",
        :volume => "9.99",
        :container_id => 1,
        :description => "MyText"
      ),
      stub_model(Beverage,
        :name => "Name",
        :strength => "9.99",
        :volume => "9.99",
        :container_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of beverages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
