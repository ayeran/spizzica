require 'spec_helper'

describe "beers/edit" do
  before(:each) do
    @beer = assign(:beer, stub_model(Beer,
      :name => "MyString",
      :manufacturer_id => 1,
      :strength => "9.99",
      :container_id => 1,
      :lid_id => 1
    ))
  end

  it "renders the edit beer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beer_path(@beer), "post" do
      assert_select "input#beer_name[name=?]", "beer[name]"
      assert_select "input#beer_manufacturer_id[name=?]", "beer[manufacturer_id]"
      assert_select "input#beer_strength[name=?]", "beer[strength]"
      assert_select "input#beer_container_id[name=?]", "beer[container_id]"
      assert_select "input#beer_lid_id[name=?]", "beer[lid_id]"
    end
  end
end
