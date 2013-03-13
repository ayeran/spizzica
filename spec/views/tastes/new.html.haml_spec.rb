require 'spec_helper'

describe "tastes/new" do
  before(:each) do
    assign(:taste, stub_model(Taste,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new taste form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tastes_path, "post" do
      assert_select "input#taste_name[name=?]", "taste[name]"
    end
  end
end
