require 'spec_helper'

describe "beer_styles/edit" do
  before(:each) do
    @beer_style = assign(:beer_style, stub_model(BeerStyle,
      :name => "MyString",
      :description => "MyText",
      :added_by => 1,
      :updated_by => 1
    ))
  end

  it "renders the edit beer_style form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beer_style_path(@beer_style), "post" do
      assert_select "input#beer_style_name[name=?]", "beer_style[name]"
      assert_select "textarea#beer_style_description[name=?]", "beer_style[description]"
      assert_select "input#beer_style_added_by[name=?]", "beer_style[added_by]"
      assert_select "input#beer_style_updated_by[name=?]", "beer_style[updated_by]"
    end
  end
end
