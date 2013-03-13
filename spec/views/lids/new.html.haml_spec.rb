require 'spec_helper'

describe "lids/new" do
  before(:each) do
    assign(:lid, stub_model(Lid,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new lid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lids_path, "post" do
      assert_select "input#lid_name[name=?]", "lid[name]"
    end
  end
end
