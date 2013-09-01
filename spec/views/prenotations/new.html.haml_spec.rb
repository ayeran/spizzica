require 'spec_helper'

describe "prenotations/new" do
  before(:each) do
    assign(:prenotation, stub_model(Prenotation,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :comment => "MyText",
      :quantity => 1
    ).as_new_record)
  end

  it "renders new prenotation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prenotations_path, "post" do
      assert_select "input#prenotation_name[name=?]", "prenotation[name]"
      assert_select "input#prenotation_email[name=?]", "prenotation[email]"
      assert_select "input#prenotation_phone[name=?]", "prenotation[phone]"
      assert_select "textarea#prenotation_comment[name=?]", "prenotation[comment]"
      assert_select "input#prenotation_quantity[name=?]", "prenotation[quantity]"
    end
  end
end
