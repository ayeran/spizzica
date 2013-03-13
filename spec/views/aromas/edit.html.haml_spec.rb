require 'spec_helper'

describe "aromas/edit" do
  before(:each) do
    @aroma = assign(:aroma, stub_model(Aroma,
      :name => "MyString"
    ))
  end

  it "renders the edit aroma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aroma_path(@aroma), "post" do
      assert_select "input#aroma_name[name=?]", "aroma[name]"
    end
  end
end
