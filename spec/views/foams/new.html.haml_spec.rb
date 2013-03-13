require 'spec_helper'

describe "foams/new" do
  before(:each) do
    assign(:foam, stub_model(Foam,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new foam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", foams_path, "post" do
      assert_select "input#foam_name[name=?]", "foam[name]"
    end
  end
end
