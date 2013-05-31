require 'spec_helper'

describe "beveragecategories/edit" do
  before(:each) do
    @beveragecategory = assign(:beveragecategory, stub_model(Beveragecategory,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit beveragecategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beveragecategory_path(@beveragecategory), "post" do
      assert_select "input#beveragecategory_name[name=?]", "beveragecategory[name]"
      assert_select "input#beveragecategory_description[name=?]", "beveragecategory[description]"
    end
  end
end
