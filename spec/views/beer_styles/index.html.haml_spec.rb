require 'spec_helper'

describe "beer_styles/index" do
  before(:each) do
    assign(:beer_styles, [
      stub_model(BeerStyle,
        :name => "Name",
        :description => "MyText",
        :added_by => 1,
        :updated_by => 2
      ),
      stub_model(BeerStyle,
        :name => "Name",
        :description => "MyText",
        :added_by => 1,
        :updated_by => 2
      )
    ])
  end

  it "renders a list of beer_styles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
