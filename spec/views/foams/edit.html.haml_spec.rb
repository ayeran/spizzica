require 'spec_helper'

describe "foams/edit" do
  before(:each) do
    @foam = assign(:foam, stub_model(Foam,
      :name => "MyString"
    ))
  end

  it "renders the edit foam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", foam_path(@foam), "post" do
      assert_select "input#foam_name[name=?]", "foam[name]"
    end
  end
end
