require 'spec_helper'

describe "one_photos/new" do
  before(:each) do
    assign(:one_photo, stub_model(OnePhoto).as_new_record)
  end

  it "renders new one_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", one_photos_path, "post" do
    end
  end
end
