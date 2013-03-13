require 'spec_helper'

describe "lids/edit" do
  before(:each) do
    @lid = assign(:lid, stub_model(Lid,
      :name => "MyString"
    ))
  end

  it "renders the edit lid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lid_path(@lid), "post" do
      assert_select "input#lid_name[name=?]", "lid[name]"
    end
  end
end
