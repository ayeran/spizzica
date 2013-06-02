require 'spec_helper'

describe "itemstatuses/edit" do
  before(:each) do
    @itemstatus = assign(:itemstatus, stub_model(Itemstatus,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit itemstatus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", itemstatus_path(@itemstatus), "post" do
      assert_select "input#itemstatus_name[name=?]", "itemstatus[name]"
      assert_select "input#itemstatus_description[name=?]", "itemstatus[description]"
    end
  end
end
