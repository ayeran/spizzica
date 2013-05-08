require 'spec_helper'

describe "bruschetta/new" do
  before(:each) do
    assign(:bruschettum, stub_model(Bruschettum,
      :name => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new bruschettum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bruschetta_path, "post" do
      assert_select "input#bruschettum_name[name=?]", "bruschettum[name]"
      assert_select "input#bruschettum_price[name=?]", "bruschettum[price]"
    end
  end
end
