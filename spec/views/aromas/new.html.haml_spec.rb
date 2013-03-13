require 'spec_helper'

describe "aromas/new" do
  before(:each) do
    assign(:aroma, stub_model(Aroma,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new aroma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aromas_path, "post" do
      assert_select "input#aroma_name[name=?]", "aroma[name]"
    end
  end
end
