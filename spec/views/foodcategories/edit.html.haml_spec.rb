require 'spec_helper'

describe "foodcategories/edit" do
  before(:each) do
    @foodcategory = assign(:foodcategory, stub_model(Foodcategory,
      :name => "MyString"
    ))
  end

  it "renders the edit foodcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", foodcategory_path(@foodcategory), "post" do
      assert_select "input#foodcategory_name[name=?]", "foodcategory[name]"
    end
  end
end
