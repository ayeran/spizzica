require 'spec_helper'

describe "beers/edit" do
  before(:each) do
    @beer = assign(:beer, stub_model(Beer,
      :name => "MyString",
      :type => "",
      :taste => "MyString",
      :strength => "9.99"
    ))
  end

  it "renders the edit beer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beer_path(@beer), "post" do
      assert_select "input#beer_name[name=?]", "beer[name]"
      assert_select "input#beer_type[name=?]", "beer[type]"
      assert_select "input#beer_taste[name=?]", "beer[taste]"
      assert_select "input#beer_strength[name=?]", "beer[strength]"
    end
  end
end
