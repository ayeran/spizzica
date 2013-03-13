require 'spec_helper'

describe "beers/index" do
  before(:each) do
    assign(:beers, [
      stub_model(Beer,
        :name => "Name",
        :manufacturer_id => 1,
        :strength => "9.99",
        :container_id => 2,
        :lid_id => 3
      ),
      stub_model(Beer,
        :name => "Name",
        :manufacturer_id => 1,
        :strength => "9.99",
        :container_id => 2,
        :lid_id => 3
      )
    ])
  end

  it "renders a list of beers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
