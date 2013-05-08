require 'spec_helper'

describe "bruschetta/edit" do
  before(:each) do
    @bruschettum = assign(:bruschettum, stub_model(Bruschettum,
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit bruschettum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bruschettum_path(@bruschettum), "post" do
      assert_select "input#bruschettum_name[name=?]", "bruschettum[name]"
      assert_select "input#bruschettum_price[name=?]", "bruschettum[price]"
    end
  end
end
