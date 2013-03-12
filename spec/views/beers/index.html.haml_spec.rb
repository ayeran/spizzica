require 'spec_helper'

describe "beers/index" do
  before(:each) do
    assign(:beers, [
      stub_model(Beer,
        :name => "Name",
        :aroma => "Aroma",
        :flavor => 1,
        :foam => "Foam",
        :color => "Color",
        :strength => "9.99"
      ),
      stub_model(Beer,
        :name => "Name",
        :aroma => "Aroma",
        :flavor => 1,
        :foam => "Foam",
        :color => "Color",
        :strength => "9.99"
      )
    ])
  end

  it "renders a list of beers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Aroma".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Foam".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
