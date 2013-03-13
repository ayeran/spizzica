require 'spec_helper'

describe "beerstyles/edit" do
  before(:each) do
    @beerstyle = assign(:beerstyle, stub_model(Beerstyle,
      :name => "MyString"
    ))
  end

  it "renders the edit beerstyle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beerstyle_path(@beerstyle), "post" do
      assert_select "input#beerstyle_name[name=?]", "beerstyle[name]"
    end
  end
end
