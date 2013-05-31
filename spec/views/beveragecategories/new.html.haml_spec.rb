require 'spec_helper'

describe "beveragecategories/new" do
  before(:each) do
    assign(:beveragecategory, stub_model(Beveragecategory,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new beveragecategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beveragecategories_path, "post" do
      assert_select "input#beveragecategory_name[name=?]", "beveragecategory[name]"
      assert_select "input#beveragecategory_description[name=?]", "beveragecategory[description]"
    end
  end
end
