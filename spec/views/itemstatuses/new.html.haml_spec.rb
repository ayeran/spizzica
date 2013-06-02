require 'spec_helper'

describe "itemstatuses/new" do
  before(:each) do
    assign(:itemstatus, stub_model(Itemstatus,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new itemstatus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", itemstatuses_path, "post" do
      assert_select "input#itemstatus_name[name=?]", "itemstatus[name]"
      assert_select "input#itemstatus_description[name=?]", "itemstatus[description]"
    end
  end
end
