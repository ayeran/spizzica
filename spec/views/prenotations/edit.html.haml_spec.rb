require 'spec_helper'

describe "prenotations/edit" do
  before(:each) do
    @prenotation = assign(:prenotation, stub_model(Prenotation,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :comment => "MyText",
      :quantity => 1
    ))
  end

  it "renders the edit prenotation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prenotation_path(@prenotation), "post" do
      assert_select "input#prenotation_name[name=?]", "prenotation[name]"
      assert_select "input#prenotation_email[name=?]", "prenotation[email]"
      assert_select "input#prenotation_phone[name=?]", "prenotation[phone]"
      assert_select "textarea#prenotation_comment[name=?]", "prenotation[comment]"
      assert_select "input#prenotation_quantity[name=?]", "prenotation[quantity]"
    end
  end
end
