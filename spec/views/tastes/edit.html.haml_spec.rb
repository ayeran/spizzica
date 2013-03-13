require 'spec_helper'

describe "tastes/edit" do
  before(:each) do
    @taste = assign(:taste, stub_model(Taste,
      :name => "MyString"
    ))
  end

  it "renders the edit taste form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", taste_path(@taste), "post" do
      assert_select "input#taste_name[name=?]", "taste[name]"
    end
  end
end
