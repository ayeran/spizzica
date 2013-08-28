require 'spec_helper'

describe "one_photos/edit" do
  before(:each) do
    @one_photo = assign(:one_photo, stub_model(OnePhoto))
  end

  it "renders the edit one_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", one_photo_path(@one_photo), "post" do
    end
  end
end
