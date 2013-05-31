require 'spec_helper'

describe "beverages/new" do
  before(:each) do
    assign(:beverage, stub_model(Beverage,
      :name => "MyString",
      :strength => "9.99",
      :volume => "9.99",
      :container_id => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new beverage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beverages_path, "post" do
      assert_select "input#beverage_name[name=?]", "beverage[name]"
      assert_select "input#beverage_strength[name=?]", "beverage[strength]"
      assert_select "input#beverage_volume[name=?]", "beverage[volume]"
      assert_select "input#beverage_container_id[name=?]", "beverage[container_id]"
      assert_select "textarea#beverage_description[name=?]", "beverage[description]"
    end
  end
end
