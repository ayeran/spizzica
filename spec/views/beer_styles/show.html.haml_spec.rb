require 'spec_helper'

describe "beer_styles/show" do
  before(:each) do
    @beer_style = assign(:beer_style, stub_model(BeerStyle,
      :name => "Name",
      :description => "MyText",
      :added_by => 1,
      :updated_by => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
