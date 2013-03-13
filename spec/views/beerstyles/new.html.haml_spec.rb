require 'spec_helper'

describe "beerstyles/new" do
  before(:each) do
    assign(:beerstyle, stub_model(Beerstyle,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new beerstyle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beerstyles_path, "post" do
      assert_select "input#beerstyle_name[name=?]", "beerstyle[name]"
    end
  end
end
